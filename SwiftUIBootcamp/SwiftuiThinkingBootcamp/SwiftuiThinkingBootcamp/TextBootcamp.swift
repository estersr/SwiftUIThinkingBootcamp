//
//  TextBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! Hello, World! Hello, World! Hello, World! Hello, World!".uppercased())
        
        //  .font(.body)
        //  .fontWeight(.semibold)
        // .bold()
        // .underline()
        //            .underline(true, color: .red)
        //            .italic()
        // .strikethrough()
        //            .strikethrough(true, color: .green)
        
        //❇️ quando voce usa o .font dessa forma estabelecendo seu size, ao inves do outro, quem usa a acessibilidaded do iphone nao consegue alterar a fonte do seu app para maior ou menor.
      //      .font(.system(size: 24, weight: .semibold, design: .serif))
        
          //  .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/) ❇️distance between the letters
        
          //  .baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/) ❇️ distance between the lines
        
            .multilineTextAlignment(.leading)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 200, height: 100, alignment: .leading)
        
         //   .minimumScaleFactor(0.1) ❇️ isso é uma porcentagem do font size. o 01 fala que ela pode scale down 10% do tamanho da fonte to fit dentro da frame definida.
    }
}

#Preview {
    TextBootcamp()
}
