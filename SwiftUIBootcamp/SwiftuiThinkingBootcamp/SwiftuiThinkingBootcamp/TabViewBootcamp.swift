//
//  TabViewBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 27/02/25.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedtab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id:\.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(.red)
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectedtab) {
//            HomeView(selectedtab: $selectedtab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("browse")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("browse")
//                }
//                .tag(1)
//            
//            Text("profile")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("profile")
//                       
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

//all the logic of our view comes in here
struct HomeView: View {
    @Binding var selectedtab: Int
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Text("Home tab")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                
                Button(action: {
                    selectedtab = 2
                }, label: {
                    Text("go to profile")
                        .padding()
                        .padding(.horizontal)
                        .font(.headline)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .cornerRadius(10)
                })
            }
        }
    }
}
