//
//  DarkModeBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 03/03/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme //its basically a switch between dark and light mode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("PRIMARY")
                        .foregroundStyle(.primary)
                    
                    Text("This color is SECONDARY ")
                        .foregroundStyle(.secondary)
                    
                    Text("this color is black")
                        .foregroundStyle(.black)
                    
                    Text("this color is white")
                        .foregroundStyle(.white)
                    
                    Text("this color is globally adaptive")
                        .foregroundStyle(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                    
                }
            }
            .navigationTitle("dark mode bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
