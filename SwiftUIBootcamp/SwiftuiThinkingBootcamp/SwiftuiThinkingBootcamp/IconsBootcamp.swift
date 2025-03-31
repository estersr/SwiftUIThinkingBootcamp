//
//  IconsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "rectangle.and.pencil.and.ellipsis")
            .renderingMode(.original)
           // .resizable() //❇️ if u use frame, but dont use font on the image, it will be necessary to use resizable
           // .aspectRatio(contentMode: .fit) ❇️ you can just call .scaletofit and it will do the same
           // .scaledToFit()
            .font(.largeTitle)
          //  .font(.system(size: 200))
           // .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
         //   .frame(width: 300, height: 300)
            //.clipped()
        
    }
}

#Preview {
    IconsBootcamp()
}
