//
//  ColorsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
            //    .red
            //    Color(UIColor.darkGray) // ❇️ This feature, UICOLOR belongs to UIKIT,  however it has more color options than the ones of swiftui, so u can access them that way. If you press UICOLOR.system you will have more options too. Some of them adapt to dark and light mode so its useful.
                Color("CustomColor")
            )
            .frame( width:300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:-20, y:-20)
    }
}

#Preview {
    ColorsBootcamp()
}
