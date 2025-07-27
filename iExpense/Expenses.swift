//
//  Expenses.swift
//  iExpense
//
//  Created by Ahmed Juvale on 7/27/25.
//

import Combine

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
