//
//  ImageBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("DailyEssayIcon")
            .renderingMode(.template)// ❇️ we use this to be able to paint whats inside the image with the foreground. OBS: apenas funciona se a imagem colocada nao tiver background. se a img tiver background, vai colorir td imagem com a cor.
        // OBS2: vc vai ter q pintar sempre a imagem quando for usar ela de outra cor, entao pra n precisar fazer isso vc vai no assets e clica em "render as"template image, e a funcao é a mesma.
            .resizable()
          //  .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        
           // .clipped()
          //  .cornerRadius(150)
        //    .clipShape(
              //  Circle()
              //  RoundedRectangle(cornerRadius: 25.0)
              //  Ellipse()
            //    Circle()
          //  )
    }
}

#Preview {
    ImageBootcamp()
}
