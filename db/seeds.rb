Client.create(name: "Greivin", direction: "sesteo #2, San Ramon, Costa Rica", statusClient: 0 ,rolUser: 0, email: "roi@gmail.com")
Client.create(name: "Juan", direction: "sesteo #1, San Jose, Costa Rica", statusClient: 1 ,rolUser: 1, email: "juan@gmail.com")
Client.create(name: "Pedro", direction: "sesteo #3, San Pedro, Costa Rica", statusClient: 0 ,rolUser: 0, email: "pedro@gmail.com")
Client.create(name: "Antonio", direction: "sesteo #4, Santa Cruz, Costa Rica", statusClient: 1 ,rolUser: 1, email: "antonio@gmail.com")
Client.create(name: "Kendal", direction: "sesteo #5, Abangares, Costa Rica", statusClient: 0 ,rolUser: 1, email: "kendal@gmail.com")
Client.create(name: "Isac", direction: "sesteo #6, Tilaran, Costa Rica", statusClient: 1 ,rolUser: 0, email: "isac@gmail.com")

Dish.create(picture: 'https://storage.googleapis.com/bucket-libro-rails1/uploads/dish/picture/1/nachos.jpg', name: "Nachos",  description: "Tortillas, Frijoles, Pico de gallo, Queso", price: 1000)
Dish.create(picture: "https://storage.googleapis.com/bucket-libro-rails1/uploads/dish/picture/1/pizza.png", name: "Pizza",  description: "Peperoni, Jamon, Queso, Hongos...", price: 5000)
Dish.create(picture: "https://storage.googleapis.com/bucket-libro-rails1/uploads/dish/picture/1/chifrijo.jpg", name: "Chifrijo",  description: "Frijoles, Chicharon, Aguacate, Pico de gallo", price: 4000)
Dish.create(picture: "https://storage.googleapis.com/bucket-libro-rails1/uploads/dish/picture/1/casado.png", name: "Casado",  description: "Arroz, Frijoles, Carne a escoger", price: 3000)
Dish.create(picture: "https://storage.googleapis.com/bucket-libro-rails1/uploads/dish/picture/1/papas.jpg", name: "Papas",  description: "Papas, Queso, Pico de gallo", price: 2000)
Dish.create(picture: "https://storage.googleapis.com/bucket-libro-rails1/uploads/dish/picture/1/arroz%20con%20pollo.jpg", name: "Arroz con pollo",  description: "Arroz, Pollo, Olores", price: 5000)

Order.create(statusOrder: 0, date: "2020/05/01",  quantity: 1, client_id: 1, dish_id: 1)
Order.create(statusOrder: 1, date: "2020/05/02",  quantity: 2, client_id: 2, dish_id: 2)
Order.create(statusOrder: 2, date: "2020/05/05",  quantity: 3, client_id: 3, dish_id: 3)
Order.create(statusOrder: 3, date: "2020/05/10",  quantity: 4, client_id: 4, dish_id: 4)
Order.create(statusOrder: 2, date: "2020/05/20",  quantity: 5, client_id: 5, dish_id: 5)
Order.create(statusOrder: 2, date: "2020/05/01",  quantity: 2, client_id: 6, dish_id: 6)

