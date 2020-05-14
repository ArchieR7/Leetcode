/*
 Implement a trie with insert, search, and startsWith methods.
 
 Example:
 
 Trie trie = new Trie();
 
 trie.insert("apple");
 trie.search("apple");   // returns true
 trie.search("app");     // returns false
 trie.startsWith("app"); // returns true
 trie.insert("app");
 trie.search("app");     // returns true
 Note:
 
 You may assume that all inputs are consist of lowercase letters a-z.
 All inputs are guaranteed to be non-empty strings.
 */

import Foundation

extension Medium {
    class Trie {
        private var nodes: [String: Node]
        /** Initialize your data structure here. */
        init() {
            nodes = [:]
        }
        
        /** Inserts a word into the trie. */
        func insert(_ word: String) {
            var node: Node!
            for (index, c) in word.enumerated() {
                if index == 0 {
                    node = nodes[String(c), default: Node(c)]
                    nodes[String(c)] = node
                } else {
                    let new: Node = node.childs[String(c), default: Node(c)]
                    node.childs[String(c)] = new
                    node = new
                }
                if index == word.count - 1 {
                    node.isEnd = true
                }
            }
        }
        
        /** Returns if the word is in the trie. */
        func search(_ word: String) -> Bool {
            var node: Node?
            for (index, c) in word.enumerated() {
                if index == 0 {
                    node = nodes[String(c)]
                } else {
                    node = node?.childs[String(c)]
                }
            }
            return node?.isEnd ?? false
        }
        
        /** Returns if there is any word in the trie that starts with the given prefix. */
        func startsWith(_ prefix: String) -> Bool {
           var node: Node?
           for (index, c) in prefix.enumerated() {
               if index == 0 {
                   node = nodes[String(c)]
               } else {
                   node = node?.childs[String(c)]
               }
           }
           return node != nil
        }
    }
    
    class Node {
        let character: Character
        var isEnd: Bool = false
        var childs: [String: Node] = [:]
        
        init(_ character: Character) {
            self.character = character
        }
    }
}
