Rails.application.routes.draw do
  resources "dice"
  resources "companies"
  resources "contacts"
  resources "posts"
  get "/", { :controller => "companies", :action => "index" }
end
