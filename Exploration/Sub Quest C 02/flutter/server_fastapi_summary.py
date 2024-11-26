from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from summarization_model import SummarizationModel
import requests
from bs4 import BeautifulSoup

app = FastAPI()

# Summarization 모델 초기화
model = SummarizationModel("summarization_model.h5")

class UrlInput(BaseModel):
    url: str

@app.post("/summarize/")
async def summarize_news(input: UrlInput):
    try:
        # URL에서 뉴스 텍스트 가져오기
        response = requests.get(input.url)
        if response.status_code != 200:
            raise HTTPException(status_code=400, detail="URL에서 데이터를 가져올 수 없습니다.")
        
        # HTML 파싱 및 뉴스 본문 추출
        soup = BeautifulSoup(response.content, 'html.parser')
        news_text = soup.get_text(strip=True)

        # 모델로 요약 실행
        summary = model.summarize(news_text)

        return {"original_text": news_text, "summary": summary}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=5000)
