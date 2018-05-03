Rails.application.routes.draw do
  get   '/home',         to: 'static_pages#home'
  get   '/dalimembers',  to: 'static_pages#dalimembers'
  root  'static_pages#home'
end