//
//  ContentView.swift
//  iExpense
//
//  Created by Ahmed Juvale on 7/25/25.
//

import SwiftUI

struct ContentView: View {

    @State
    private var showingAddExpense = false

    @StateObject
    var expenses = Expenses()

    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.id) {
                    item in Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }

    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
