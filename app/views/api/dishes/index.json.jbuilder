json.array! @dishes do |dish|
    json.name dish.name
    json.picture dish.picture
    json.description dish.description
    json.price dish.price
end
