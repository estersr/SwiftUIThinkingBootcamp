//
//  ColorPickerBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 19/02/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            //unfertinately u cant click the label to open it, you need to click on the button for it
            ColorPicker("Select color", selection: $backgroundColor, supportsOpacity: true)
                .padding() //this pads height
                .background(Color.black)
                .cornerRadius(10)
                .foregroundStyle(.white)
                .font(.headline)
                .padding(50) //this pads the side
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
