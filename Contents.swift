import UIKit
import Foundation

struct Person {
    let name: String
    let address: String
    let age: Int
    let income: Double
    let cars: [String]
}

let peopleArray = [ Person(name:"Santosh", address: "Pune, India", age:34, income: 100000.0, cars:["i20","Swift VXI"]),
                    Person(name: "John", address:"New York, US", age: 23, income: 150000.0, cars:["Crita", "Swift VXI"]),
                    Person(name:"Amit", address:"Nagpure, India", age:17, income: 200000.0, cars:Array()),
                    Person(name: "Bruno", address: "Brazil, Sao Paulo", age: 27, income: 300000.0, cars: ["Peugeot 206"]),
                    Person(name: "Adalberto", address: "Van Couver, Canada", age: 26, income: 500000.0, cars: Array())]

var name: [String] = Array()

for person in peopleArray {
    name.append(person.name)
}
print(name)

let names = peopleArray.map { (person) -> String in
    return person.name
}

print(names)

let names2 = peopleArray.map({$0.name})

print(names2)

let cars = peopleArray.map({$0.cars})

print(cars)

let cars2 = peopleArray.flatMap({$0.cars}) //returns a set of elements removing nil references

print(cars2)

//FILTERING

let filteredNames = peopleArray.filter({($0.age > 17 && $0.name == "Bruno") || $0.address == "Pune, India"}).map({$0.name})
print(filteredNames)
