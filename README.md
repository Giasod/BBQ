# Добро пожаловать в Ситком про Канатчикову Дачу!
Это приложение, которое я сделал в рамках обучения на курсе
 [Хороший Программист](https://goodprogrammer.ru/). Горжусь невероятно, надо признаться.

Приложение написано на версии Ruby 2.7.1 и Rails 6.0.3.3.

## В чём суть
Это приложение-агрегатор друзей для тусовок, вечеринок, шашлыков — кто как хочет.
Пользователи могут регистрироваться, загружать фотографии, создавать новые события, 
подписываться на события других пользователей, оставлять комментарии, удалять свой профиль,
в общем, полный набор.

## На чём работает
* `Bootstrap 4` отвечает за красоту
* `Devise` помогает с регистрацией и паролями
* `Pundit` разруливает вопросы авторизации
* `Carrierwave`, `rmagick` и `fog-aws` позволяют насладиться фоточками
* `SendGrid API` отсылает почту 
* `Rails-i18n` локализация
* `Resque` и `Redis` помогают с фоновыми задачами

## Как установить и запустить на локальном сервере
```
git clone git@github.com:Giasod/BBQ.git
cd ./BBQ
bundle install
cp config/database.yml.example config/database.yml
yarn install --check-files 
bundle exec rails db:migrate
bundle exec rails s
```
Вуаля, вы восхитительны!

Если хотите воспользоваться AWS, то придётся прописать свои ключи в файле `.env`
```
S3_ACCESS_KEY='your access key'
S3_SECRET_KEY='your secret key'
S3_BUCKET_REGION='your region'
```
Аналогично для почты по `SendGrid API` тоже в `.env`:
```
SENDGRID_USERNAME='apikey' # это стандартный юзер нейм у сендгрида
SENDGRID_API_KEY='your api_key'
SENDGRID_DOMAIN='your domain'
```
