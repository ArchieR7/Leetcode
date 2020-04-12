/*
 Given a non-empty, singly linked list with head node head, return a middle node of linked list.
 
 If there are two middle nodes, return the second middle node.
 */
import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension Easy {
    static func middleNode(_ head: ListNode?) -> ListNode? {
        var array: [ListNode] = []
        var node: ListNode? = head
        while node != nil {
            if let value: ListNode = node {
                array.append(value)
                node = value.next
            }
        }
        return array[Int(array.count / 2)]
    }
}
