Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/dalimembers'

  root 'application#hello'
end
