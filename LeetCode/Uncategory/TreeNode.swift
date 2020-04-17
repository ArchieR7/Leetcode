//
//  TreeNode.swift
//  LeetCode
//
//  Created by Archie on 2020/4/23.
//  Copyright © 2020 Archie. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
