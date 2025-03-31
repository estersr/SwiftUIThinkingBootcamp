//
//  FrameBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //❇️Quando voce quiser saber se tem um erro de alinhamento, use um background em cor vibrante antes do frame e isso te ajuda achar o erro
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.green)
            .frame(height: 400)
            .background(.yellow)
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(.pink)
        
        
        
        //Exemplo 1
//            .background(.green)
//         //   .frame(width: 100, height: 100, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(.red)
  }
}

#Preview {
    FrameBootcamp()
}
