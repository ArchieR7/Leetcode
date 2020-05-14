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
 ["Trie","insert","insert","insert","insert","insert","insert","search","search","search","search","search","search","search","search","search","startsWith","startsWith","startsWith","startsWith","startsWith","startsWith","startsWith","startsWith","startsWith"]
 [[],["app"],["apple"],["beer"],["add"],["jam"],["rental"],["apps"],["app"],["ad"],["applepie"],["rest"],["jan"],["rent"],["beer"],["jam"],["apps"],["app"],["ad"],["applepie"],["rest"],["jan"],["rent"],["beer"],["jam"]]
 */

let trie = Medium.Trie()
trie.insert("app")
trie.insert("apple")
trie.insert("beer")
trie.insert("add")
trie.insert("jam")
trie.insert("rental")
print(trie.search("apps"))
print(trie.search("app"))
print(trie.search("ad"))
print(trie.search("applepie"))
print(trie.search("rest"))
print(trie.search("jan"))
print(trie.search("rent"))
print(trie.search("beer"))
print(trie.search("jam"))
print(trie.startsWith("apps"))
print(trie.startsWith("app"))
print(trie.startsWith("ad"))
print(trie.startsWith("applepie"))
print(trie.startsWith("rest"))
print(trie.startsWith("jan"))
print(trie.startsWith("rent"))
print(trie.startsWith("beer"))
print(trie.startsWith("jam"))

