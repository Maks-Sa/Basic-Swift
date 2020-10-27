import UIKit

//Четное
let whatNumber = 40

func even(number: Int ) -> Bool{
    
   if (number % 2 == 0) {
        return true
    }else{
        return false
    }
}
print(even(number: whatNumber))

//Вопрос. Почему ошибка?
/*
 var b = false
(number % 2 == 0) ? b = true : b = false
return b
*/

//Деление на 3

let whatNumberThree = 9456456

func divisionByThree (number: Int) -> Bool{
    if (number % 3 == 0) {
         return true
     }else{
         return false
     }
}
print(divisionByThree(number: whatNumberThree))

//массив до 100
var myArray = Array (1 ... 100)
print(myArray)

//массив - /2 и /3

let resultArray = myArray.filter{$0 % 2 != 0 && $0 % 3 == 0}
print(resultArray)


//
