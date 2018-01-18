//: Playground - noun: a place where people can play

import UIKit

//***** Let's learn Stack in data structure *****//

 //*** Basically a stack is like an array but with limited functionality like we can push or add any element at the top , we can pop or delete any element from the top and can only peek top element, navigation controller is basically a stack example in iOS. stack give us LIFO or last-in-first-out order, The element you pushed last is the first one to come off with the next pop.

//*** Let's write an example of stack that can take any type of elemet


  struct Stack<Element>{
    
    fileprivate var stackArray = [Element]()  // array of element
    
    // to check if stack is empty or not
    
     var isEmpty: Bool {
        return stackArray.isEmpty
    }
    
    // To check the count of stack
    
    var count: Int {
        
        return stackArray.count
    }
    
    // top element of the stack
    
    var topElement: Element? {
        
        return stackArray.last
    }
    
    // Push an element into the stack
    
  mutating func push(_ element: Element) {

             stackArray.append(element)
    }
    
    // Pop an element into stack, we use mutating key word to modify any function into the structure
    
  mutating func pop() -> Element? {
        
       return stackArray.popLast()
    }
}

//*** Let's use this stack, i created a stack of type int.

var stack = Stack<Int>()

stack.push(11) // Here i added a int Value into stack

stack.push(22) // Let's add another value into stack so our stack should be like [11,22]

stack.push(33) // Let's add another value into stack so our stack should be like [11,22,33]

stack.pop()  // Here we peroform pop , so it's should pop last entered value, remember LIFO?

print(stack)

// We can push and pop multiple time and test this.

// NOTICE : Push always add the new element at the end of the array, not at the beginning because Inserting at the beginning of an array is expensive, an O(n) operation, because it requires all existing array elements to be shifted in memory. Adding at the end is O(1); it always takes the same amount of time, regardless of the size of the array.


