//
//  BackgroundMaterialsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 28/03/25.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 30, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("DailyEssayIcon")
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
