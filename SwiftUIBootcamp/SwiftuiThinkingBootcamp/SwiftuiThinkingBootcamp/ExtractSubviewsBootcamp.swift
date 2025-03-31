//
//  ExtractSubviewsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 01/02/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            //everytime we call it, we need to pass their parameters.
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Bananas", count: 10, color: .yellow)
            MyItem(title: "Orange", count: 150, color: .orange)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
