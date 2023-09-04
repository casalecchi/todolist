//
//  ItemModel.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import Foundation

struct ItemModel: Codable, Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
