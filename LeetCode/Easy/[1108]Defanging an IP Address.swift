/*
 Given a valid (IPv4) IP address, return a defanged version of that IP address.
 
 A defanged IP address replaces every period "." with "[.]".
 */

import Foundation

extension Easy {
    static func defangIPaddr(_ address: String) -> String {
        address.reduce(String(), { result, value -> String in
            value == "." ? result + "[.]" : result + String(value)
        })
    }
}
