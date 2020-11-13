import UIKit

//не закончено

/*бой друг против друга.
1.разные виды бойцов
хп сила броня
один ход=один удар+один блок. до победы
Три зоны: голова тело ноги

2.объяснения видов бойцов, добавляем статы= разные статы, которы евлияют на бой
одежда, влияет на статы и броню*/

/*enum PartOfBody{
    case head, body, leg
}*/

//print(arrayPartOfBody.randomElement() as Any)
enum inclination {
   case dark, light
}
protocol Alive {
    var name: String {get set}
    var health: Int {get set}
    var startHealth: Int {get set}
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
    var punchBody: String {get set}
    var blockBody: String {get set}
    //func moveWarrior(enemy: inout Attack, enemyAlive: inout Alive)
    func punchWarrior (enemy: inout Attack, enemyAlive: inout Alive)
    func blockWarrior (enemy: inout Attack, enemyAlive: inout Alive)
}


func generateText(typeMove: Int, name: String, enemyName: String, punchBody: String, enemyPunchBody: String, enemyDamage: Int)  -> String{
    var text: String = ""
    let arrayPartOne = [" потерял самоконтроль и потому безумный ", " пытался что то сказать, и в это время задумчивый ", " расплылся в улыбке, но неожиданно ", " кашлянул и вдруг ", " пытался увернуться, но ", " пытался что-то сказать, но неожиданно непобедимый ", " чесал <вырезано цензурой>, а ", " высморкался, и вдруг, ", " думал о <вырезано цензурой>, вследствие чего "  ]
    let arrayPartTwo = [" беспричинно саданул сильный удар кулаком в ", " подмигнув размозжил ногой ", " c испугу пронзил  ", " прослезившись уколол в ", " влепил рассекающий удар в ", " сделав двойное сальто, обрушил тяжелую ногу на  ", " заблокировал удар в ", " остановил удар по ", " парировал удар локтем в "]
   
    if typeMove == 1{
        let arrayBlock = arrayPartTwo[6...8]
        let arrayBlockText = Array(arrayBlock)
        text = enemyName + arrayPartOne.randomElement()! + name + arrayBlockText.randomElement()! + punchBody
    }else {
        let arrayBlock = arrayPartTwo[..<6]
        let arrayBlockText = Array(arrayBlock)
        text = name + arrayPartOne.randomElement()! + enemyName + arrayBlockText.randomElement()! + enemyPunchBody + "  " + enemyName + " - " + String(enemyDamage)
    }
    
    return text
}

class Voin: Alive, Power, InArmor, Attack {
    var arrayPartOfBody = ["голову", "туловище", "ногу"]
    var name: String
    var damage: Int = 0
    var health: Int
    var startHealth: Int
    var strenght: Int
    var armor: Int
    var punchBody: String = ""
    var blockBody: String = ""
    
    init(name: String, health: Int, strenght: Int, armor: Int) {
        self.name = name
        self.health = health
        self.startHealth = health
        self.strenght = strenght
        self.armor = armor
    }
 /*
     func moveWarrior(enemy: inout Attack, enemyAlive: inout Alive) {
        self.damage =  Int(round(Double(strenght) * Double.random(in: 0.5..<1.4)))
        self.punchBody = arrayPartOfBody.randomElement()!
        blockBody = arrayPartOfBody.randomElement()!
        if self.blockBody == enemy.punchBody{
            print("\(enemyAlive.name) потерял самоконтроль и потому безумный \(self.name) заблокировал удар в \(blockBody)")
        }else {
            self.health = self.health - enemy.damage
            print("\(self.name) пытался что то сказать, и в это время задумчивый  \(enemyAlive.name) с испугу саданул красивый удар в \(enemy.punchBody) врага.-\(enemy.damage). У \(self.name) осталось \(self.health) жизни")
        }*/
    
   
    
    func punchWarrior(enemy: inout Attack, enemyAlive: inout Alive) {
        self.damage =  Int(round(Double(strenght) * Double.random(in: 0.5..<1.4)))
        self.punchBody = arrayPartOfBody.randomElement()!
    }
    
    func blockWarrior(enemy: inout Attack, enemyAlive: inout Alive) {
        blockBody = arrayPartOfBody.randomElement()!
        if self.blockBody == enemy.punchBody{
          print(" \(generateText(typeMove: 1, name: self.name, enemyName: enemyAlive.name, punchBody: self.blockBody, enemyPunchBody: enemy.punchBody, enemyDamage: enemy.damage)) ")
          //print("\(enemyAlive.name) потерял самоконтроль и потому безумный \(self.name) заблокировал удар в \(blockBody)")
        }else {
            self.health = self.health - enemy.damage
            print("\(generateText(typeMove: 2, name: self.name, enemyName: enemyAlive.name, punchBody: self.blockBody, enemyPunchBody: enemy.punchBody, enemyDamage: enemy.damage)) [\(self.health)/\(self.startHealth)]")
           // print("\(self.name) пытался что то сказать, и в это время задумчивый  \(enemyAlive.name) с испугу саданул красивый удар в \(enemy.punchBody) врага.-\(enemy.damage). [\(self.health)/\(self.startHealth)]")
        }
    }

}

class Berserk: Voin {
     init(health: Int, strenght: Int, armor: Int, name: String) {
          
            super.init(name: name, health: health, strenght: strenght, armor: armor )
        }
    
   override func punchWarrior(enemy: inout Attack, enemyAlive: inout Alive) {
        self.damage =  Int(round(Double(strenght) * Double.random(in: 0.5..<1.4)))
        self.punchBody = arrayPartOfBody.randomElement()!
    }
}

class Tank: Voin{
  
    init(health: Int, strenght: Int, armor: Int, name: String) {
            super.init(name: name, health: health, strenght: strenght, armor: armor )
        }
    
    override func punchWarrior(enemy: inout Attack, enemyAlive: inout Alive) {
        self.damage =  Int(round(Double(strenght) * Double.random(in: 0.3..<1.2)))
        self.punchBody = arrayPartOfBody.randomElement()!
    }
}


var berserk: Attack = Berserk(health: 490, strenght: 14, armor: 24, name: "Max")
var tank: Attack = Tank(health: 700, strenght: 12, armor: 43, name: "Nata")
var berserkHealth = berserk as! Alive
var tankHealth = tank as! Alive
print(berserkHealth.health)
print(tankHealth.health)

while (berserkHealth.health > 0 && tankHealth.health > 0){
   berserk.punchWarrior(enemy: &tank, enemyAlive: &tankHealth)
    tank.punchWarrior(enemy: &berserk, enemyAlive: &berserkHealth)
    berserk.blockWarrior(enemy: &tank, enemyAlive: &tankHealth)
    tank.blockWarrior(enemy: &berserk, enemyAlive: &berserkHealth)
  /*  berserk.moveWarrior(enemy: &tank, enemyAlive: &tankHealth )
    tank.moveWarrior(enemy: &berserk, enemyAlive: &berserkHealth)*/
}
print("\(berserkHealth.name) \(berserkHealth.health)")
print("\(tankHealth.name) \(tankHealth.health)")

