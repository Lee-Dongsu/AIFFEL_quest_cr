from fastapi import FastAPI
from PIL import Image
import torch
from torchvision import models, transforms
from pathlib import Path

app = FastAPI()

# 모델 불러오기 및 가중치 로드
model = models.vgg16()
model.load_state_dict(torch.load("/aiffel/fastAPI/vgg16_weights.pth"))
model.eval()

# 이미지 전처리 함수 정의
preprocess = transforms.Compose([
    transforms.Resize(256),
    transforms.CenterCrop(224),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225]),
])

# 예측 함수 정의
def predict_image_class(image_path: str):
    image = Image.open(image_path)
    input_tensor = preprocess(image).unsqueeze(0)  # 배치 차원 추가
    with torch.no_grad():
        output = model(input_tensor)
        probabilities = torch.nn.functional.softmax(output[0], dim=0)
        confidence, class_idx = probabilities.max(0)
    return {"class": class_idx.item(), "confidence": confidence.item()}

# 엔드포인트 설정
@app.get("/predict")
async def predict():
    image_path = "/aiffel/fastAPI/sample_data/jellyfish.jpg"
    
    # 파일 경로 확인
    if not Path(image_path).exists():
        return {"error": "파일을 찾을 수 없습니다."}
    
    result = predict_image_class(image_path)
    return result
