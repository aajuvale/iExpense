//
//  ContentView.swift
//  iExpense
//
//  Created by Ahmed Juvale on 7/25/25.
//

import SwiftUI

struct SecondView: View {

    @Environment(\.dismiss)
    var dismiss

    let name: String

    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
    @State
    private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Scott")
        }
    }
}

#Preview {
    ContentView()
}
