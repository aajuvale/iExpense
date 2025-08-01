//
//  AddView.swift
//  iExpense
//
//  Created by Ahmed Juvale on 7/27/25.
//

import SwiftUI

struct AddView: View {

    @Environment(\.dismiss)
    var dismiss

    @ObservedObject
    var expenses: Expenses

    @State
    private var name = ""

    @State
    private var type =  "Personal"

    @State
    private var amount =  0.0

    let types = ["Business", "Personal"]

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)

                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }

                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add New Expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}
