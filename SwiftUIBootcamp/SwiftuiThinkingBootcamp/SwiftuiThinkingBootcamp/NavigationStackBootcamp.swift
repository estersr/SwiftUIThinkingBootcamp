//
//  NavigationStackBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 29/03/25.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = ["Apples", "Bananas", "Oranges", "Pineapple"]
    
    @State private var stackPath: [String] = []
    var body: some View {
        NavigationStack(path: $stackPath) {
            
            Button("super seque") {
                stackPath.append("coconut")
            }
            
            VStack (spacing: 30){
                
                ForEach(fruits, id: \.self) { fruit in
                    NavigationLink(value: fruit) {
                        Text(fruit)
                    }
                }
                ForEach(0..<10) { x in
                    NavigationLink(value: x) {
                        Text("click me \(x)")
                    }
                    
                }
            }
            .navigationBarTitle("NavView")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("fruit screen")
                
            }}
        }
    }
    
    
    struct MySecondScreen: View {
        
        let value: Int
        init(value: Int) {
            self.value = value
            print("INIT FOR SCREEN \(value)")
        }
        var body: some View {
            Text("Second Screen \(value)")
        }
    }
    
    #Preview {
        NavigationStackBootcamp()
    }
