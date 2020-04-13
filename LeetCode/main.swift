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

let root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
root.left?.left = TreeNode(4)
root.left?.right = TreeNode(5)

print(Easy.diameterOfBinaryTree(root))
