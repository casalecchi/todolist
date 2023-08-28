//
//  AddView.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import SwiftUI

struct AddView: View {
    @State private var newTitle: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $newTitle)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.systemGray5))
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
    }
}
