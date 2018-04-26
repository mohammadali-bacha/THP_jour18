# Bienvenue sur mon githoub #Only#THP#Lyon 

Dans les 2 dossiers se trouvent les 2 projets
Le premier sur la présentation de la Team #Only_Lyon
Le deuxième sur le moussaillon concerné, ouam pour le coup :)


Avant de lancer la migration
0. entrez dans le dossier souhaité ici "je-me-présente" pour le projet 1 "sitebackend" pour le projet 2
1. 'bundle install' pour récupérer les bonnes gems (sinon bonjour les dégâts je suis sur 2.4.1 ehhhh oui je sais... mais je l'aime bien cette version ;)
2. 'rails db:migrate'
3. 'rails s' pour le server 'rails c' pour la console bref vous connaissez :)
4. vous n'avez plus qu'à vous baladez avec les indications de la correction de Féfé :)
5. Excellente correction vous me trouverez sur slack @Odssey n'hésitez pas à faire un coucou c'est pas facile depuis 2 semaines je trouve :/


Pour vous éviter de vous galérer dans les dossiers, je vous ai mis THE problem sur lequel on a passé 3h comment faire en sorte que l'user soit unique et qu'il n'accepte pas les espaaaaaaces!!!!!!!!!

Ca se passe dans le sous-dossier:
sitebackend>app>models
Model user.rb

class User < ApplicationRecord
#avant de performer l'action de création de l'id une fois que le Moussaillon
#rempli son formulaire on demande à la Class user de checker notre fonction def
  before_create :uniqueness
#On défini notre fonction uniqueness
  def uniqueness
    if self.class.exists?(id: '')
      # on utilise la méthode .exists pour vérifier que l'id n'est pas déjà dans la db avec un string vide
    else
      # s'il l'existe alors la création de l'id est annulée
    end
  end
  #on l'implemente sur le username et on défini la notion de uniqueness avec un booléan
  validates :username, :uniqueness => true
  #on valide par la même que l'username ne comprends aucun espace
  validates :username, format: { without: /\s/ }
# Ces fonctions et méthodes Rails ont été trouvé par la Team #OnlyLyon sur :
#http://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html#method-i-validates_format_of

end

\A bientôt les confrères moussaillons :)

