# 기본 이미지 설정
FROM node:16

# 작업 디렉터리 설정
WORKDIR /app

# 프로젝트 내의 package.json과 package-lock.json을 컨테이너에 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 프로젝트 파일 복사
COPY . .

# 빌드
RUN npm run build

# 3000 포트로 서비스 실행
EXPOSE 3000
CMD ["npm", "start"]
