//
//  ShapesBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       // Circle()
        // Ellipse()
        Capsule(style: .circular)
           .fill(.blue)
        //    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        
        //    .stroke() ❇️ instead of filling the circule you just get the shape of line (you can costumize)
          //  .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 10)
            .strokeBorder(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            //.trim(from: 0.2, to: 1.0) //❇️ corta o circulo na metade
      //      .stroke(Color.purple, lineWidth: 50)
            .frame(width: 200, height: 100)
        
    }
}

#Preview {
    ShapesBootcamp()
}
