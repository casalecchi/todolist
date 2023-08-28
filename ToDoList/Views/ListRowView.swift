//
//  ListRowView.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static let exampleTrue = ItemModel(title: "First Item", isCompleted: true)
    static let exampleFalse = ItemModel(title: "Second", isCompleted: false)
    
    static var previews: some View {
        Group {
            ListRowView(item: exampleTrue)
            ListRowView(item: exampleFalse)
        }
    }
}
