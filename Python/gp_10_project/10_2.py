# 문제 3-3. 클래스 업데이트  
# 앞에서 구현했던 메서드들을 Kiosk 클래스에 추가합니다. 직접 코드를 작성해 보세요! 

class Kiosk:
    def __init__(self):
        self.menu = ['americano', 'latte', 'mocha', 'yuza_tea', 'green_tea', 'choco_latte']
        self.price = [2000, 3000, 3000, 2500, 2500, 3000]
        self.order_menu = []
        self.order_price = []

    # 메뉴 출력 메서드
    def menu_print(self):
      for i in range(len(self.menu)):
            print(i + 1, self.menu[i], ' : ', self.price[i], '원')

    # 주문 메서드
    def menu_select(self):

        # 음료의 번호를 주문하는 과정
        n = 0
        while n < 1 or n > len(self.menu):
            n = int(input('주문하실 음료 번호를 입력해주세요. : '))
            if 1 <= n <= len(self.menu):

                # 주문 가격 리스트에 추가
                self.order_price.append(self.price[n-1])
                self.price_sum = self.price[n-1]


            else:
                print('잘못된 번호를 입력했습니다. 다시 입력해주세요.')

        # HOT, ICE 선택 과정
        t = 0
        while t != 1 and t != 2:
            t= int(input("HOT 음료는 1을, ICE 음료는 2를 입력하세요 : "))

            if t == 1:
                self.temp = 'HOT'
                # 주문 리스트에 추가
                self.order_menu.append(self.temp + ' ' + self.menu[n-1])

            elif t == 2:
                self.temp = 'ICE'
                # 주문 리스트에 추가
                self.order_menu.append(self.temp + ' ' + self.menu[n-1])

            else:
                print ('잘못된 번호를 입력했습니다. 다시 입력해주세요.')

        # 추가 주문을 받는 과정
        p = 1
        while p != 0:
            p = int(input('추가 주문은 새로운 음료 번호를, 지불을 하시려면 0번을 눌러주세요. : '))
            if 1 <= p <= len(self.menu):
            # 추가 주문의 음료 온도를 다시 받는 과정
                t = 0
                while t != 1 and t != 2:
                    t= int(input("HOT 음료는 1을, ICE 음료는 2를 입력하세요 : "))

                    if t == 1:
                        self.temp = 'HOT'
                        # 추가로 새로 리스트에 추가
                        self.order_price.append(self.price[p-1])
                        self.price_sum += self.price[p-1]
                        self.order_menu.append(self.temp + ' ' + self.menu[p-1])

                    elif t == 2:
                        self.temp = 'ICE'
                        # 추가로 새로 리스트에 추가
                        self.order_price.append(self.price[p-1])
                        self.price_sum += self.price[p-1]
                        self.order_menu.append(self.temp + ' ' + self.menu[p-1])
                    
                    else:
                        print ('잘못된 번호를 입력했습니다. 다시 입력해주세요.')

        # 주문 된 음료 출력
        print('주문된 음료 : ', self.order_menu)
        print('음료의 가격 : ', self.order_price)            


    # 지불
    def pay(self):
        check_pay = 0
        while check_pay != 1 and check_pay != 2:
            check_pay = int(input('결제 방법을 번호로 입력해주세요. 현금 : 1, 카드 : 2 : '))
            if check_pay == 1:
                print('직원을 호출하겠습니다.')
            elif check_pay == 2:
                print('IC칩 방향에 맞게 카드를 꽂아주세요.')            
            else:
                print('1과 2 중 하나를 입력해주세요.')

    # 주문서 출력 
    def table(self):
        # 외곽
        print('⟝' + '-' * 30 + '⟞')
        for i in range(5):
            print('|' + ' ' * 31 + '|')

        # 주문 상품명 : 해당 금액
        for i in range(len(self.order_menu)):
            print(self.order_menu[i], ' : ', self.order_price[i])

        print('합계 금액 :', self.price_sum)

        # 외곽
        for i in range(5):
            print('|' + ' ' * 31+ '|')
        print('⟝' + '-' * 30 + '⟞')

a = Kiosk()  # 객체 생성 
a.menu_print()  # 메뉴 출력
a.menu_select()  # 주문
a.pay()  # 지불
a.table()  # 주문표 출력