import UIKit
enum TypeCar {
    case sportCar, trunkCar
}

enum DoorState {
    case open, close
}
enum EngineStaus {
    case start, stop
}

enum WindowStat {
    case open, close
}

enum BrandCar {
    case BMW, Mercedes, Audi, Volvo, Porsche
}
enum StateTrunk {
    case full, empty
}

struct Car {
    let brand: BrandCar
    let typeCar: TypeCar
    var volumeTrunk: Double
    var stTrunk: StateTrunk
    var window: WindowStat
    var engine: EngineStaus
    var door: DoorState
    
    mutating func openDoor(status: Bool){
        
        if status{
            self.door = .open
        } else{
            self.door = .close
        }
    }
    mutating func openWindow(status: Bool){
 
        if status{
            self.window = .open
        } else{
            self.window = .close
        }
    }
    
    mutating func startEngine(status: Bool){
 
        if status{
            self.engine = .start
        } else{
            self.engine = .stop
        }
    }
    mutating func fillTrunk(status: Bool){
 
        if status{
            self.stTrunk = .full
        } else{
            self.stTrunk = .empty
        }
    }
}

var car1 = Car(brand: .BMW, typeCar: .sportCar, volumeTrunk: 34, stTrunk: .empty, window: .close, engine: .start, door: .open)

var car2 = Car(brand: .Porsche, typeCar: .trunkCar, volumeTrunk: 5000, stTrunk: .full, window: .close, engine: .stop, door: .close)

print("Первый автомобиль: \(car1.brand) тип: \(car1.typeCar) Объем багажника: \(car1.volumeTrunk) Багажник: \(car1.stTrunk) Окна: \(car1.window) Двигатель: \(car1.engine) Дверь: \(car1.door)")
print("Второй автомобиль: \(car2.brand) тип: \(car2.typeCar) Объем багажника: \(car2.volumeTrunk) Багажник: \(car2.stTrunk) Окна: \(car2.window) Двигатель: \(car2.engine) Дверь: \(car2.door)")

car1.openDoor(status: false)
car1.startEngine(status: false)
car2.openDoor(status: true)
car2.fillTrunk(status: false)

print("Первый автомобиль: \(car1.brand) тип: \(car1.typeCar) Объем багажника: \(car1.volumeTrunk) Багажник: \(car1.stTrunk) Окна: \(car1.window) Двигатель: \(car1.engine) Дверь: \(car1.door)")
print("Второй автомобиль: \(car2.brand) тип: \(car2.typeCar) Объем багажника: \(car2.volumeTrunk) Багажник: \(car2.stTrunk) Окна: \(car2.window) Двигатель: \(car2.engine) Дверь: \(car2.door)")
