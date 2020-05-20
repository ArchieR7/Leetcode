/*
 Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.

 Note:
 You may assume k is always valid, 1 ≤ k ≤ BST's total elements.

 Example 1:

 Input: root = [3,1,4,null,2], k = 1
    3
   / \
  1   4
   \
    2
 Output: 1
 Example 2:

 Input: root = [5,3,6,2,4,null,null,1], k = 3
        5
       / \
      3   6
     / \
    2   4
   /
  1
 Output: 3
 Follow up:
 What if the BST is modified (insert/delete operations) often and you need to find the kth smallest frequently? How would you optimize the kthSmallest routine?
 */

import Foundation

extension Medium {
    static func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        func value(_ node: TreeNode?, nodes: inout [Int]) {
            guard let node: TreeNode = node else { return }
            value(node.left, nodes: &nodes)
            nodes.append(node.val)
            value(node.right, nodes: &nodes)
        }
        var nodes: [Int] = []
        value(root, nodes: &nodes)
        return nodes[k - 1]
    }
}
