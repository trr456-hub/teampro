# 🍿 CCA_TeamProject

## 1. TEAM

| 팀원         | 업무 내용           |
| ------------ | ------------------- |
| 김석근(팀장) | Front-end, Back-end |
| 박종국       | Back-end            |
| 김규호       | Back-end            |

날짜 2022.9.15 ~ 2022.10.12

## 2. 주요 작업 내용

- 전체페이지 디자인 및 퍼블리싱
- 로그인 및 회원가입
- 마이페이지
- 지역,영화,날짜 및 시간 선택
- 좌석 생성 및 기능구현
- 예약된 좌석 처리
- 좌석 알파벳분류
- 인원 및 좌석선택 유효성검사
- 통합 체크 및 결제페이지 이동
- 예매 정보 표시
- 구매자 정보 표시
- 결제 정보 표시
- 결제 모듈 제어
- 결제 완료 알림

## 3. 구동화면

### 메인화면

- 로그인, 회원가입, 예매 등 페이지를 표시해줍니다.
- 표시되는 정보들을 따라서 이동할 수 있습니다.
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/ce10be25-a23a-4ba0-baec-a6fc600207dd" width="100%">
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/4f379932-e0d0-4ce3-9c78-d6eebee16f33" width="100%">

### 상단 슬라이드바

- 슬라이드를 통해 보기 편한 UI를 시각화 했습니다.
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/4b1903e2-55f8-450f-8976-f4210179be86" width="100%">

### 로그인 & 회원가입

- 회원가입을 통해 계정을 생성해주고 회원가입이 완료되면 로그인 페이지로 이동할 수 있게 구현
- 로그인페이지 새로고침에 따라서 사영중인 영화 포스터가 랜덤으로 바뀌도록 구현
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/b49e7715-419c-4255-a418-7f693e1dd857" width="100%"><p>
  <br>
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/dbd6287d-7f04-433e-a2dc-959cdb155a59" width="100%">

### 마이페이지

- 로그인 정보와 정보수정, 주문내역, 리뷰관리, 예매내역 등을 확인할 수 있습니다.
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/51b8433b-fe9a-4b1f-a09b-62347b19ae5b" width="100%">

### 지역선택

- 달력을 동적으로 생성
- 클릭한 정보 표시
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/b0b6eb0f-709b-4435-964c-ae575a877bea" width="100%">

### 좌석예매

- 선택한 좌석은 색상을 표시
- 이미 예매된 좌석은 disabled 처리를 해줘서 선택 불가능하게 처리
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/d349ccda-9eee-4c47-a8e1-5cdfe12d0f3d" width="100%">

### 결제 & 예매 정보 확인

- 선택한 정보들을 표시해주고 어떻게 결제할지 선택함
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/388e91e0-76a9-48d0-a976-d963f24204d0" width="100%">

### 결제모듈(이니시스 & 카카오페이)

- 이니시스 결제모듈과 카카오페이 결제모듈
- 둘중하나로 결제를 완료하면 결제알림 출력
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/748ac7ff-6114-4e1e-8b62-6fc11db2ad67" width="100%">
  <br>
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/fa225676-fbb2-44bc-be58-47ee6a147c46" width="100%">

### 예매확인

- 마이페이지 예매확인으로 넘겨줌으로써 재확인 가능하게 구현
  <img src=" https://github.com/trr456-hub/teampro/assets/108771927/4ef7816d-4747-4320-8786-7dbc1aab174f" width="100%">

## DB 구조도

<img src="https://github.com/trr456-hub/teampro/assets/108771927/7a1f7b7c-06fd-4194-8237-bb064473cb6f" width="100%">
