// Node Class
class Node<T> {

  let value: T
  var next: Node?

  init(value: T) {
    self.value = value
  }

}

// Stack Class
class Stack<T> {

  var top: Node<T>?

  func push(_ value: T) {
    let oldTop = top
    top = Node(value: value)
    top?.next = oldTop
  }

  func pop() -> T? {
    let currentTop = top
    top = top?.next
    return currentTop?.value
  }

  func peek() -> T? {
    return top?.value
  }

}

struct User {
  let name: String
  let username: String
}

let me = User(name: "Argenis", username: "@argenistherose")
let you = User(name: "Micah-Ella", username: "@micahellaestacio")

let usersStack = Stack<User>()
usersStack.push(me)
usersStack.push(you)

let firstUserPop = usersStack.pop()
print(firstUserPop?.name ?? "")

let stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

stack.peek()

let firstPop = stack.pop() // should return 3
let secondPop = stack.pop() //
let thirdPop = stack.pop()
let finalPop = stack.pop()


func solution(_ num: Int) -> Int {
  var sum = 0
  for i in 1...num {
    if i % 3 == 0 && i % 5 == 0 {
      sum += i
      print(sum)
    }
  }
  return sum
}

solution(45)
