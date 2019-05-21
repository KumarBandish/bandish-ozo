import UIKit

var str = "Hello, playground"

protocol Details {
    //Protocol methods must not have bodies
    //But protocol extension must have bodies
    var rupees : Int { get  set}
    func getParentDetails()
}

extension Details {
    //If we r changing protocl stored property value then make as mutating---
    
    mutating func getParentDetails() {
        print("parent details found")
        rupees = 100
    }
    
    func checkPersonalDatavalidation() {
        print("correrct ")
    }
}
class Person: Details {
    var rupees: Int = 12
    
    var name: String?
    var age: Int?
    init(name: String?, age: Int?) {
        self.name = name
        self.age = age
    }
    
    func getPersonalDetail() {
        rupees = 200
        print("name: \(name ?? "") and age: \(age ?? 0)")
    }
    
    func getParentDetails() {
        print("parent details not found")
    }

    func  checkPersonalDatavalidation() {
        print("parsonal detail validation is correct")
    }
}
Person.getParentDetails(<#T##Person#>)
let person = Person(name: "Ansh", age: 6)
print(person.rupees)
person.getPersonalDetail()
person.getParentDetails()
person.checkPersonalDatavalidation()

