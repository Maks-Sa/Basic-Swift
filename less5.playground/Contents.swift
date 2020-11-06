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

protocol StrenghtPunch {
    var minPunch: Int {get set}
    var maxPunch: Int {get set}
}
protocol Cloth {
    var nameCloth: String {get set}
    var helthCloth: Int {get set}
}

protocol Attack {
    
    func punchWarrior (enemy: inout Alive, enemy: InArmor, damage: Int, partOfBodyPunch: PartOfBody, partOfBodyBlock: PartOfBody )

}

protocol WarriorMove {
    var punch: PartOfBody {get set}
    var block: PartOfBody {get set}
}
class Warrior {
    
}
class Tank: Alive, Power, InArmor, StrenghtPunch, Attack, WarriorMove {
    var health: Int = 0
    var strenght: Int = 0
    var armor: Int = 0
    var minPunch: Int = 5
    var maxPunch: Int = 15
    var punch: PartOfBody
    var block: PartOfBody
    
    func punchWarrior(enemy: inout Alive, enemy: InArmor, damage: Int, partOfBodyPunch: PartOfBody, partOfBodyBlock: PartOfBody ) {
        if partOfBodyPunch == partOfBodyBlock {
            
        }
        else {
            
        }
    }
}



