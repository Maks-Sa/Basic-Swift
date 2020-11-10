import UIKit

//не закончено

/*бой друг против друга.
1.разные виды бойцов
хп сила броня
один ход=один удар+один блок. до победы
Три зоны: голова тело ноги

2.объяснения видов бойцов, добавляем статы= разные статы, которы евлияют на бой
одежда, влияет на статы и броню*/

enum PartOfBody{
    case head, body, leg
}

enum inclination {
   case dark, light
}
protocol Alive {
    var health: Int {get set}
}

protocol Power {
    var strenght: Int {get set}
}

protocol InArmor {
    var armor: Int {get set}
}

protocol Cloth {
    var nameCloth: String {get set}
    var helthCloth: Int {get set}
}

protocol Attack {
    var damage: Int {get set}
    func punchWarrior (enemy: inout Alive, damage: Int, partOfBodyPunch: PartOfBody )
    func blockWarrior ( partOfBodyBlock: PartOfBody )

}

protocol WarriorMove {
    var punch: PartOfBody {get set}
    var block: PartOfBody {get set}
}
class Warrior: Alive, Power, InArmor, Attack, WarriorMove {
        var damage: Int
        var health: Int
        var strenght: Int
        var armor: Int
        var punch: PartOfBody
        var block: PartOfBody
        
        init(health: Int, strenght: Int, armor: Int, punch:  PartOfBody, block: PartOfBody) {
            self.health = health
            self.strenght = strenght
            self.armor = armor
            self.punch = punch
            self.block = block
            self.damage = Int(round(Double(strenght) * Double.random(in: 0..<1.2)))
        }
        
        func punchWarrior(enemy: inout Alive, damage: Int, partOfBodyPunch: PartOfBody) {
            
        }
        func blockWarrior(partOfBodyBlock: PartOfBody) {
        
        }
}


class Tank: Alive, Power, InArmor, Attack, WarriorMove {
    var damage: Int
    var health: Int
    var strenght: Int
    var armor: Int
    var punch: PartOfBody
    var block: PartOfBody
    
    init(health: Int, strenght: Int, armor: Int, punch:  PartOfBody, block: PartOfBody) {
        self.health = health
        self.strenght = strenght
        self.armor = armor
        self.punch = punch
        self.block = block
        self.damage = Int(round(Double(strenght) * Double.random(in: 0..<1.2)))
    }
    
    func punchWarrior(enemy: inout Alive, damage: Int, partOfBodyPunch: PartOfBody ) {
        
            
        }
    func blockWarrior(partOfBodyBlock: PartOfBody) {
        
        }
    
}


