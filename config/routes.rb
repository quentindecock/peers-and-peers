Rails.application.routes.draw do
  root 'high_voltage/pages#show', :id => 'homepage', :format => false
  get '/:locale' => 'high_voltage/pages#show', :id => 'homepage'
  scope "/:locale", locale: /en|fr/ do
      get "/pages/:id" => "high_voltage/pages#show", :as => :page, :format => false
  end
end
