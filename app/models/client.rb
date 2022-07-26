class Client < ApplicationRecord
    #has_many :sales
    has_many :orders

    validates :name, presence: true
    validates :email, presence: true
    def self.buscador(termino)
      Client.where("name LIKE ?", "%#{termino}%")
    end

    enum statusClient: {active: 0, inactive: 1}

    enum rolUser: {admin: 0, kitchenUser: 1, client: 2}
end
