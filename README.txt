ДЗ 3: сервис со счётчиком в Docker

Настройки Compose

cp .env.example .env, затем поменять значения:
APP_PORT - порт на компьютере (по умолчанию 8080), внутри контейнера всегда 8000
GREETING - текст поля greeting (по умолчанию Hello, Docker!)

Запуск

Уровень 4, один контейнер:
docker build -t hw3-counter .
docker run -d --name hw3-single -p 8080:8000 -e GREETING=Привет hw3-counter

Уровень 6, Compose и SQLite на именованном volume app-data:
docker compose -f compose.level6.yaml up -d --build

Уровень 8, приложение и Redis:
docker compose up -d --build --wait
