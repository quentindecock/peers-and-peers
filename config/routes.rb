Rails.application.routes.draw do
  root 'high_voltage/pages#show', :id => 'homepage', :locale => I18n.default_locale, :format => false

  # redirections - to remove when Google took it into account
  get 'index.html',              to: redirect('/',301)
  get 'clients.html',            to: redirect('/en/pages/credentials',301)
  get 'team.html',               to: redirect('/en/pages/team',301)
  get 'contact.html',            to: redirect('/en/pages/contact',301)
  get 'consulting.html',         to: redirect('/en/pages/consulting',301)
  get '/en/pages/due-diligence', to: redirect('/en/pages/due-diligences',301)

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "en"} do
    get "/pages/:id" => "high_voltage/pages#show", :as => :page, :format => false
  end
end
