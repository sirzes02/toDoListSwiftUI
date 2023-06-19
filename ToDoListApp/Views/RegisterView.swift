//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Santiago Varela on 18/06/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Full name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green) {
                    
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
