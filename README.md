# README

Basic Useage:

Whenever you pull,

  bundle install  #install any new gems

  rails s puma -b 'ssl://0.0.0.0:9291?key=server.key&cert=server.crt&verify_mode=none'  #starts the rails server

  and/or

  rails db:migrate  #if there is a pending migration error

then connect to localhost:3000

for js stuffs

`npm i`

and then

`npm run build` - for a one off build

`npm run watch` - for continuous watching
