import UIKit

/*1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

 6. Вывести значения свойств экземпляров в консоль.*/

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
enum TypeTruck{
    case dumpTruck, truck
}

enum Spoiler {
    case roofSpoiler, trunkspoiler
}

class Сar {
    let brand: BrandCar
    var volumeTrunk: Double
    var stTrunk: StateTrunk
    var window: WindowStat
    var engine: EngineStaus
    var door: DoorState
    
    
    init(brand: BrandCar, volumeTrunk: Double, stTrunk: StateTrunk, window: WindowStat, engine: EngineStaus,door: DoorState) {
        self.brand = brand
        self.volumeTrunk = volumeTrunk
        self.stTrunk = stTrunk
        self.window = window
        self.engine = engine
        self.door = door
    }
    
    func openDoor(status: Bool){
        
        if status{
            self.door = .open
        } else{
            self.door = .close
        }
    }
    func openWindow(status: Bool){
 
        if status{
            self.window = .open
        } else{
            self.window = .close
        }
    }
    
    func startEngine(status: Bool){
 
        if status{
            self.engine = .start
        } else{
            self.engine = .stop
        }
    }
    func fillTrunk(status: Bool){
 
        if status{
            self.stTrunk = .full
        } else{
            self.stTrunk = .empty
        }
    }
    
}

class SportCar : Сar {
    var topSpeed: Double
    var timeTo100km: Double
    var typeSpoiler: Spoiler
    init (topSpeed: Double, timeTo100km: Double, typeSpoiler: Spoiler, brand: BrandCar, volumeTrunk: Double, stTrunk: StateTrunk, window: WindowStat, engine: EngineStaus,door: DoorState){
        self.topSpeed = topSpeed
        self.timeTo100km = timeTo100km
        self.typeSpoiler = typeSpoiler
        super.init(brand: brand, volumeTrunk: volumeTrunk, stTrunk: .empty, window: window, engine: engine, door: door)
    }
    override func fillTrunk(status: Bool){
 
        if status{
            self.stTrunk = .full
            print("Для более высокой скорости, лучше багажник не заполнять")
            self.timeTo100km += 1
            self.topSpeed -= 50
        } else{
            self.stTrunk = .empty
        }
    }
    
}

class TrunkCar : Сar {
    var typeTruck: TypeTruck
    init(typeTruck: TypeTruck, brand: BrandCar, volumeTrunk: Double, stTrunk: StateTrunk, window: WindowStat, engine: EngineStaus,door: DoorState) {
        self.typeTruck = typeTruck
        super.init(brand: brand, volumeTrunk: volumeTrunk, stTrunk: stTrunk, window: window, engine: engine, door: door)
    }
    
}


let sportCar = SportCar(topSpeed: 300.00, timeTo100km: 3, typeSpoiler: .trunkspoiler, brand: .Porsche, volumeTrunk: 100, stTrunk: .empty, window: .close, engine: .start, door: .open)
let fura = TrunkCar(typeTruck: .dumpTruck, brand: .Volvo, volumeTrunk: 5000, stTrunk: .full, window: .close, engine: .stop, door: .open)

print("Автомобиль: \(sportCar.brand) Багажник: \(sportCar.stTrunk) Максимальная скорость: \(sportCar.timeTo100km) 0-100: \(sportCar.timeTo100km)")
sportCar.fillTrunk(status: true)
print("Автомобиль: \(sportCar.brand) Багажник: \(sportCar.stTrunk) Максимальная скорость: \(sportCar.timeTo100km) 0-100: \(sportCar.timeTo100km)")
