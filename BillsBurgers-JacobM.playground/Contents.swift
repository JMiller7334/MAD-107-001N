import UIKit
print("Burger Shop Menu: Taking orders!")
enum meats:Double{
    case turkey = 3.45
    case beef = 2.45
    case chicken = 1.75
}
enum breads:Double{
    case white = 1.50
    case wheat = 2.02
    case multiGrain = 2.45
}

enum cheeses:Double{
    case american = 1.10
    case swiss = 1.75
    case mozzarella = 1.80
}

var orderNumber = 0

struct customerOrder{
    var orderMeats: meats?
    var orderBread: breads?
    var orderCheese: cheeses?
        
    func printOrder(){
        orderNumber = orderNumber + 1
        if let meat = orderMeats, let bread = orderBread, let cheese = orderCheese{
            let subTotal = (meat.rawValue + bread.rawValue + cheese.rawValue)
            print("Sandwhich order#\(orderNumber): subtotal:$\(String(format: "%g",subTotal)) | Sandwhich contains: \(meat), \(bread), \(cheese)")
        }
        else{
            print("Sandwhich order#\(orderNumber): there was a problem with your order")
        }
    }
}

let order1 = customerOrder(orderMeats: meats.beef, orderBread: breads.wheat, orderCheese: cheeses.swiss)
order1.printOrder()
let order2 = customerOrder()
order2.printOrder()

