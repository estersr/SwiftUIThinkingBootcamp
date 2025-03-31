//
//  ListBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "orange", "peach"
    ]
    
    @State var veggies: [String] = [
    "Tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: 
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundStyle(.purple)
                ) {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundStyle(.white)
                           // .frame(maxWidth: .infinity, maxHeight: .infinity)
                           // .background(.pink)
                            .listRowBackground(Color.pink)
                            .padding(.vertical)
                        
                    }
                    //❇️ with this simple command, we add the delete button in our list
                    .onDelete(perform: delete)
                    //to change the order of items
                    .onMove(perform: move)
//                    .onMove(perform: { indices, newOffset in
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
//                    })
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
                
                
            }
          //  .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                 addButton
                }
            }
        }
        .tint(.red)
        
 
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
}

#Preview {
    ListBootcamp()
}
