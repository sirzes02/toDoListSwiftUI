//
//  Extensions.swift
//  ToDoListApp
//
//  Created by Santiago Varela on 19/06/23.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        do {
            let data = try JSONEncoder().encode(self)
            let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
