//
//  NavigationSplitViewBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/03/25.
//

import SwiftUI

// used for -> Ipad, MacOS, VisionOS. For iPhone its not needed.
struct NavigationSplitViewBootcamp: View {
    
    //this will dictate the screens we want to show first. Here i want it to be the green.
    @State private var  visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            
            List(FoodCategory.allCases, id: \.rawValue, selection:  $selectedCategory) { category in
                Button(category.rawValue.capitalized) {
                    selectedCategory = category
                }
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List {
                            ForEach(Fruit.allCases, id: \.rawValue) { fruit in
                                Button(fruit.rawValue.capitalized) {
                                   selectedFruit = fruit
                                }
                            }
                        }
                        
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
            }
        } detail: {
            Color.green
        }
        //we decide the size of the one we want.
       // .navigationSplitViewStyle(.prominentDetail)
    }
}
#Preview {
    NavigationSplitViewBootcamp()
}

enum FoodCategory: String, CaseIterable {
    case fruits
    case vegetables
    case meats
}

enum Fruit: String, CaseIterable {
    case apple
    case banana
    case orange
}
