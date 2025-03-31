//
//  ButtonStylesBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 28/03/25.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("button title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    
            }
            .controlSize(.extraLarge)
            //buttonbordershape to costumize the shape
            .buttonBorderShape(.roundedRectangle(radius: 22.5))
            .buttonStyle(.borderedProminent)
            
            
            
            
            //1
            Button("button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.extraLarge)
          //  .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            
            //2
            Button("button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
           // .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            //3
            Button("button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            
            //4
            Button("button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
          //  .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
