//
//  AnyLayoutBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    //sizeclass for iphone is either compact or regular, and its basically the size of the screen it is on.
    //regular: interface has lot of space (portrait, regular height (telefone em pé)
    //compact: limited space. (compact height, regular width - landscape (telefone deitado)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gama")
            }

            }
            
    }
}

#Preview {
    AnyLayoutBootcamp()
}
