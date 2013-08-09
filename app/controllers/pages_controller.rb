class PagesController < ApplicationController
 

 # Nous voyons ici que le fichier pages_controller.rb définit une classe appelée PagesController.
 # Les classes sont simplement une façon pratique d'organiser les fonctions (appelées aussi méthodes)
 # comme les actions home et contact, qui sont définies en utilisant le mot-clé def. Le signe « < » 
 #indique que PagesController hérite de la classe Rails ApplicationController ; comme nous le verrons 
 #dans un instant, cela signifie que nos pages possèdent une grande quantité de fonctionnalités spécifiques à Rails


# definition de l'action home
  def home
 @titre = "Home" 
 #renseigner la variable @titre 
  end

  def about
 @titre = "About"
  end

  def gallery
 @titre = "Gallery"
  end
end
