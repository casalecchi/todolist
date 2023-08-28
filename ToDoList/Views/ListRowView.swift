//
//  ListRowView.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import SwiftUI

struct ListRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("This is the first item")
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView()
    }
}
