/*
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.

 */

import Foundation

extension Easy {
    class MinStack {
        private var stack: [Int]
        private var minStack: [Int]
        /** initialize your data structure here. */
        init() {
            stack = []
            minStack = []
        }
        
        func push(_ x: Int) {
            stack.append(x)
            minStack.append(min(x, minStack.last ?? x))
        }
        
        func pop() {
            _ = stack.removeLast()
            _ = minStack.removeLast()
        }
        
        func top() -> Int {
            return stack.last ?? 0
        }
        
        func getMin() -> Int {
            return minStack.last ?? 0
        }
    }


}
