//
//  ContextMenuBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 03/02/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift thinking")
                .font(.headline)
            Text("How to use contextmenu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        //clipShape substitutes cornerradius which was deprecated
        .background(backgroundColor).clipShape(.buttonBorder)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .purple
            }, label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            })
            
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
