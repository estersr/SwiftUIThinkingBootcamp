//
//  StacksBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        //Zstack is the only one that doesnt have spacing, only alignment.
        VStack (alignment: .center, spacing: 0, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        })
    }
        }


#Preview {
    StacksBootcamp()
}
