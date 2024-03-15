#  Post API на Laravel

Это простое приложение API, написанное на фреймворке Laravel, с использованием Docker.

## Установка

1. Склонируйте репозиторий:

   ```bash
   git clone https://github.com/Ridan-M/post_api.git
   
2. Перейдите в директорию проекта:

   ```bash
   cd post_api

3. Установите зависимости PHP:

   ```bash
   docker-compose composer run install
   docker-compose composer run update

4. Запустите контейнеры Docker:

   ```bash
   docker-compose up web -d

5. Скопируйте файл .env.example в .env:

   ```bash
   cp src/.env.example src/.env

6. Сгенерируйте ключ приложения:

   ```bash
   docker-compose run artisan key:generate

7. Примените миграции базы данных:
   ```bash
   docker-compose run artisan migrate --seed


## Использование API

* API доступно по адресу: http://localhost:8080/
* Реализовать следующие RESTful API операции для поста:

| Название	                   |   HTTP Метод    |        Маршрут (URL)        |
|:----------------------------|:---------------:|:---------------------------:|
| Получение списка постов     |       GET       |         /api/posts          |
| Получение конкретного поста |       GET       |      /api/posts/{post}      |
| Создание поста              |      POST       |         /api/posts          |
| Изменение поста             |       PUT       |      /api/posts/{post}      |
| Удаление поста              |     DELETE      |      /api/posts/{post}      |
