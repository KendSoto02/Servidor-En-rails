json.array! @orders do |order|
    json.id order.id
    json.date order.date
    json.quantity order.quantity
    json.nameClient "#{order.client.name}"
    json.nameDish "#{order.dish.name}" 
    json.statusOrder order.statusOrder
end