//
//  OnTapGestureBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 12/03/25.
//

import SwiftUI

struct OnTapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.green : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25.0)
            })
            Text("Tap gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
            
        }
        .padding(40)
    }
}

#Preview {
    OnTapGestureBootcamp()
}
