Rails.application.routes.draw do
  mount Ecommerce::Engine::Engine => "/ecommerce-engine"
end
