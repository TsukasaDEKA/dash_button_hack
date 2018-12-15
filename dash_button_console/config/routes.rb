Rails.application.routes.draw do
  get '/' => 'refrigerator_event#top'
  post 'refrigerator_event/add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
