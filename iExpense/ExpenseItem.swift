//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Ahmed Juvale on 7/27/25.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
