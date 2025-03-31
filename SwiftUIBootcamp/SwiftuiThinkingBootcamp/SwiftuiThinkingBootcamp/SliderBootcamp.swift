//
//  SliderBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 21/02/25.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var sliderValue: Double = 0
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.2f", sliderValue)
            )
            .foregroundStyle(color)
            // Text("\(sliderValue)")
            //            Slider(value: $sliderValue)
            //                .accentColor(.red)
            
            //  Slider(value: $sliderValue, in: 0...100)
            
            //  Slider(value: $sliderValue, in :0...5, step: 1.0)
            
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: {(_) in
                color = .green
            },
                   minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("2"),
                   label: {
                Text ("Title")
            })
        }
    }
}

#Preview {
    SliderBootcamp()
}
