class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id
  has_one :pizza
  has_one :restaurant
end
