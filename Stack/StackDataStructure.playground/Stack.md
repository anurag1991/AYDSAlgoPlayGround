###  Let's learn Stack in data structure 

 Basically a stack is like an array but with limited functionality like we can push or add any element at the top , we can pop or delete any element from the top and can only peek top element, navigation controller is basically a stack example in iOS. stack give us LIFO or last-in-first-out order, The element you pushed last is the first one to come off with the next pop.

 Let's write an example of stack that can take any type of elemet

```
  struct Stack<Element> {
    
    fileprivate var stackArray = [Element]()  
    
     var isEmpty: Bool {
        return stackArray.isEmpty
    }
        
    var count: Int {
        
        return stackArray.count
    }
        
    var topElement: Element? {
        
        return stackArray.last
    }
    
  mutating func push(_ element: Element) {

             stackArray.append(element)
    }
    
  mutating func pop() -> Element? {
        
       return stackArray.popLast()
    }
}

```
Let's use this stack, i created a stack of type int.

```
var stack = Stack<Int>()

stack.push(11) 

stack.push(22) 

stack.push(33) 

stack.pop()  

print(stack)

```
 We can push and pop multiple time and test this.

 NOTICE : Push always add the new element at the end of the array, not at the beginning because Inserting at the beginning of an array is expensive, an O(n) operation, because it requires all existing array elements to be shifted in memory. Adding at the end is O(1); it always takes the same amount of time, regardless of the size of the array.


