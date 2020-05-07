/*
 In a binary tree, the root node is at depth 0, and children of each depth k node are at depth k+1.

 Two nodes of a binary tree are cousins if they have the same depth, but have different parents.

 We are given the root of a binary tree with unique values, and the values x and y of two different nodes in the tree.

 Return true if and only if the nodes corresponding to the values x and y are cousins.
 */

import Foundation

extension Easy {
    static func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        guard let root: TreeNode = root else {
            return false
        }
        var depth: Int = 0
        var nodes: [TreeNode] = [root]
        var dictionary: [Int: Int] = [:]
        
        while nodes.isEmpty == false {
            depth += 1
            var next: [TreeNode] = []
            for node in nodes {
                if (node.left?.val == x && node.right?.val == y) ||
                    (node.left?.val == y && node.right?.val == x) {
                    return false
                } else if node.val == x {
                    dictionary[x] = depth
                } else if node.val == y {
                    dictionary[y] = depth
                }
                if let valueX: Int = dictionary[x], let valueY: Int = dictionary[y] {
                    return valueX == valueY
                } else {
                    next.append(contentsOf: [node.left, node.right].compactMap { $0 })
                }
            }
            nodes = next
        }
        return dictionary[x] == dictionary[y]
    }
}
