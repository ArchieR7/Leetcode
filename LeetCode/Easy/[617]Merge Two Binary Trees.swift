/*
 Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
 
 You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.
 */

import Foundation

extension Easy {
    static func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        guard let origin = t1 ?? t2 else { return nil }
        let other = origin === t1 ? t2 : t1
        let left = origin === t1 ? t1?.left : t2?.left
        let right = origin === t1 ? t1?.right : t2?.right
        let otherLeft = origin === t1 ? t2?.left : t1?.left
        let otherRight = origin === t1 ? t2?.right : t1?.right
        origin.val += other?.val ?? 0
        origin.left = mergeTrees(left, otherLeft)
        origin.right = mergeTrees(right, otherRight)
        return origin
    }
}
