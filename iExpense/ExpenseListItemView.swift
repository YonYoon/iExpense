//
//  ExpenseListItemView.swift
//  iExpense
//
//  Created by Zhansen Zhalel on 25.12.2023.
//

import SwiftUI

struct ExpenseListItemView: View {
    var item: ExpenseItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
            }
            
            Spacer()
            
            Text(item.amount, format: .currency(code: "\(Locale.current.currency ?? "USD")"))
                .foregroundStyle(
                    item.amount < 10 ? .green :
                        item.amount < 100 ? .yellow : .red
                )
        }
    }
}

#Preview {
    ExpenseListItemView(item: ExpenseItem(name: "Coffee", type: "Personal", amount: 2.0))
}
