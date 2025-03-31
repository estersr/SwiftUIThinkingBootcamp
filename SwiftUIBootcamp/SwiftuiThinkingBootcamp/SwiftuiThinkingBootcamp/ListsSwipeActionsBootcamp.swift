//
//  ListsSwipeActionsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 28/03/25.
//

import SwiftUI

struct ListsSwipeActionsBootcamp: View {
    @State var fruits: [String] = [
        "apple", "banana", "orange", "peach"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.adaptive)
                    }
            }
        }
    }
    
    func delete(IndexSet: IndexSet) {
        
    }
}

#Preview {
    ListsSwipeActionsBootcamp()
}
