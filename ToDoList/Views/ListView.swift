//
//  ListView.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import SwiftUI

struct ListView: View {
    @State private var items: [ItemModel] = [
        ItemModel(title: "This is the first item", isCompleted: true),
        ItemModel(title: "This is the second item", isCompleted: false),
        ItemModel(title: "This is the third item", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.inset)
        .navigationTitle("ToDo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }
    }
}
