//
//  ContentView.swift
//  iExpense
//
//  Created by Ahmed Juvale on 7/25/25.
//

import SwiftUI

struct ContentView: View {

    //Appstorage works just like @State and userDefaults
    @AppStorage("tapCount")
    private var tapCount = 0
//    UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }

    }
}

#Preview {
    ContentView()
}
