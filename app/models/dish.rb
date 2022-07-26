class Dish < ApplicationRecord
    mount_uploader :picture, PicDishUploader
    has_many :orders
    validates :description, presence: true, length: { in: 8..60}
    validates :name, presence: true
    validates :price, presence: true
    def self.buscador(termino)
        Dish.where("nombre LIKE ?", "%#{termino}%")
      end
end
