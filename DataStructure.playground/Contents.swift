import UIKit

var str = "Hello, playground"

var nameDict:[String: Int] = ["bandish": 1, "ansh": 2, "ram": 3 ]
print(nameDict)
nameDict["Aashray"] = 10
print(nameDict)

public class Node<Value> {
    var value: Value
    var next: Node?
    init(value: Value, next: Node?) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
  public var description: String {
    guard let next = next  else {
        return "\(value)"
    }
    return "\(value) --> " + String(describing: next) + ""
    }
}

let node1 = Node(value: 1, next: nil)
let node2 = Node(value: 2, next: nil)
let node3 = Node(value: 3, next: nil)

node1.next = node2
node2.next = node3
print(node1)
print(node2)
print(node3)
