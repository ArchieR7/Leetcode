/*
 Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
 */

import Foundation

extension Easy {
    static func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        func depth(_ node: TreeNode?, result: inout Int) -> Int {
            guard let node = node else { return 0 }
            let left = depth(node.left, result: &result)
            let right = depth(node.right, result: &result)
            result = max(result, left + right)
            return max(left, right) + 1
        }
        var result = 0
        _ = depth(root, result: &result)
        return result
    }
}
