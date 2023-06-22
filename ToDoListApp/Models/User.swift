//
//  User.swift
//  ToDoListApp
//
//  Created by Santiago Varela on 18/06/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
