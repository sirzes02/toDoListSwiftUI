//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Santiago Varela on 18/06/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
