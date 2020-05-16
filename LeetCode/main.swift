//
//  main.swift
//  LeetCode
//
//  Created by Archie on 2020/4/20.
//  Copyright © 2020 Archie. All rights reserved.
//

import Foundation

struct Easy {}
struct Medium {}

/*
let node = ListNode(1)
node.next = ListNode(2)
node.next?.next = ListNode(3)
node.next?.next?.next = ListNode(4)
node.next?.next?.next?.next = ListNode(5)
node.next?.next?.next?.next?.next = ListNode(6)
node.next?.next?.next?.next?.next?.next = ListNode(7)
//node.next?.next?.next?.next?.next?.next?.next = ListNode(8)

var target: ListNode? = node

Medium.oddEvenList(node)

while target != nil {
    print(target?.val)
    target = target?.next
}
*/

let spaner: Medium.StockSpanner = Medium.StockSpanner()
//print(spaner.next(100))
//print(spaner.next(80))
//print(spaner.next(60))
//print(spaner.next(70))
//print(spaner.next(60))
//print(spaner.next(75))
//print(spaner.next(85))

print(spaner.next(31))
print(spaner.next(41))
print(spaner.next(48))
print(spaner.next(59))
print(spaner.next(79))
