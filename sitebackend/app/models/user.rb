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
