//
//  ScrollviewBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/01/25.
//

import SwiftUI

struct ScrollviewBootcamp: View {
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
            
        }
        
        
        
        
        
        
//        ScrollView(.horizontal, showsIndicators: false, content:  {
//            HStack {
//                         ForEach(0..<50) { index in
//                             Rectangle()
//                                 .fill(Color.blue)
//                                 .frame(height:300)
//         
//                         }
//                     }
//        })
        
//        ScrollView {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height:300)
//                    
//                }
//            }
     //   }
    }
}

#Preview {
    ScrollviewBootcamp()
}
