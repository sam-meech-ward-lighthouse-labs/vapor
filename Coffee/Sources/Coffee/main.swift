import Vapor

let database = Database()
let coffee = Coffee(cream: 2, sugar: 2)
let samscoffee = Coffee(cream: 4, sugar: 0)
database.save(coffee: coffee)
database.save(coffee: samscoffee)

let app = try Application()
let router = try app.make(Router.self)


// Route is the combination of a http method and a path
router.get("hello") { req in
  return "<html><h1 style=\"color: purple\">Hello, world.</h1></html>"
}

router.get("coffees") { req in
  return database.get()
}

router.get("coffees", Int.parameter) { req -> Coffee in
  let id = try req.parameters.next(Int.self)
  return database.get(id: id)
}

router.post(Coffee.self, at: "coffees") { req, coffee -> Coffee in
  database.save(coffee: coffee)
  return coffee
}


//router.post("coffees") { req -> Future<HTTPStatus> in
//  return try req.content.decode(Coffee.self).map(to: HTTPStatus.self) { coffee in
//    database.save(coffee: coffee)
//    return .ok // 200
//  }
//}


//router.post("coffees") { req -> Future<Coffee> in
//  return try req.content.decode(Coffee.self).map(to: Coffee.self) { coffee in
//    database.save(coffee: coffee)
//    return coffee
//  }
//}



try app.run()

