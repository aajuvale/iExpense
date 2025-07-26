//
//  ContentView.swift
//  iExpense
//
//  Created by Ahmed Juvale on 7/25/25.
//

import Combine
import SwiftUI

class User: ObservableObject {
    @Published
    var firstName = "Scott"

    @Published
    var lastName = "Pilgrim"
}

struct ContentView: View {
    @StateObject
    var user = User()

    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")

            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
