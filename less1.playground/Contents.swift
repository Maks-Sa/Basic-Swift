import Foundation

//equation

let equation = "a*(x*x)+b*x+c"
let a:Double = 19.0
let b:Double = 15.0
let c:Double = -34.0

let d = b*b-4*a*c
if (d<0){
    print("Корней нет")
}else{
    if (d==0){
        var x = -b/(2*a)
        print("Корень уравнения: \(x)")
    }else {
        var x1 = (-b + sqrt(d)) / (2 * a)
        x1 = round(100 * x1) / 100
        var x2 = (-b - sqrt(d)) / (2 * a)
        x2 = round(100 * x2) / 100
        print ("Корень урвнения x1 =  \(x1)")
        print ("Корень уравнения x2 = \(x2)")
   
    }
}

//triangle

let catetA:Double = 15
let catetB:Double = 6
var gipotenuzaC:Double = sqrt(catetA * catetA + catetB * catetB)
gipotenuzaC = round(100 * gipotenuzaC) / 100
var perimeter:Double = catetA + catetB + gipotenuzaC
perimeter = round(100 * perimeter) / 100
var area:Double = catetB * catetA / 2
area = round(100 * area) / 100
print("Гипотенуза = \(gipotenuzaC)")
print("Площаль =  \(area)")
print("Периметр =  \(perimeter)")

//bank
let startVklad = 1000.0
let percent = 10.0
let years = 5

var dohod = startVklad
var i = 1

while i <= years {
    dohod = dohod * (1 + percent/100)
    i+=1
}
dohod = round(100 * dohod) / 100
print("Вклад: \(startVklad) процент годовых: \(percent)  через \(years) лет Доход = \(dohod)")


