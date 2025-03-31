//
//  BadgesBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 28/03/25.
//

import SwiftUI


// List

//tabview

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello world")
                .badge("New items")
            Text("Hello world")
            Text("Hello world")
            
        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//                .badge(5)
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "cart")
//                    Text("Cart")
//                }
//                .badge("New")
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "person.circle")
//                    Text("Profile")
//                }
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
