//
//  NewItemsView.swift
//  ToDoListApp
//
//  Created by Santiago Varela on 18/06/23.
//

import SwiftUI

struct NewItemsView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding()
            
            Form {
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due Date", selection: $viewModel.dueDate, in: Date()...)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TLButton(title: "Save", background: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }.alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please fill in all ields and select due date that is today or newer."))
            }
        }
    }
}

struct NewItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemsView(newItemPresented: Binding(get: {
            return true
        }, set: {_ in}))
    }
}
