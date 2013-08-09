require 'spec_helper'

describe PagesController do
  render_views
  # si vous voulez en plus qu'il rende les vues, nous devons lui demander explictement via la deuxième ligne

  describe "GET 'home'" do   #C'est juste une description, et ça peut être ce que vous voulez 
    it "returns http success" do # ce qui vient à l'intérieur des guillemets n'intéresse pas RSpec
      get 'home' #cette ligne soumet vraiment une requête GET 
      response.should be_success #dit que la réponse (response) de notre application devrait indiquer un succès
    end

    it "get the right title" do
      get 'home'
      response.should have_selector("title", :content => "Better Days |Home")
       # have_selector permet de verifier le contenu d'une borne html ici titre! 
       #La parenthèse doit être colée à la fin de la méthode. 
    end
  end 

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
      #Quand nous écrivons response.should be_success (la_réponse.devrait être_un_succès) dans un test RSpec, 
      #RSpec vérifie que la réponse de notre application à la requête est un code d'état de 200.
    end

    it "get the right title" do
      get 'about'
      response.should have_selector("title", :content => "Better Days |About")
    end
  end

  describe "GET 'gallery'" do
    it "returns http success" do
      get 'gallery'
      response.should be_success
    end

    it "get the right title" do
      get 'gallery'
      response.should have_selector("title", :content => "Better Days |Gallery")
    end
  end

end
