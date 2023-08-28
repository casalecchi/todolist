//
//  ListView.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRowView()
        }
        .navigationTitle("ToDo List 📝")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }
    }
}
