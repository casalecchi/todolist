//
//  ItemModel.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
