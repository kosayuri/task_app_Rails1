Rails.application.routes.draw do
  get "post" => "post#top"
  get "post/new" => "post#new"
  get "update/:id" => "post#update"
  get "show/:id" => "post#show"
  post "post/create" => "post#create"
  post "destroy/:id" => "post#destroy"
  post "postupdate/:id" => "post#postupdate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
