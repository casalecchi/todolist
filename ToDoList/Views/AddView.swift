//
//  AddView.swift
//  ToDoList
//
//  Created by Felipe Casalecchi on 28/08/23.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State private var newTitle: String = ""
    
    @State private var alertTitle: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $newTitle)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.systemGray5))
                .cornerRadius(10)
                
                Button {
                    if textIsAppropriated() {
                        listViewModel.addItem(newTitle)
                        dismiss()
                    }
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
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertTitle))
        }
    }
    
    func textIsAppropriated() -> Bool {
        if newTitle.count < 3 {
            alertTitle = "Your new item must be at least 3 characters long!"
            showAlert = true
            return false
        }
        return true
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
