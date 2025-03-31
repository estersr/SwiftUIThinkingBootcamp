//
//  OnAppearBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 12/03/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText = "Start text"
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                // 5 stands for 5 seconds. and after that, the text changes.
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "my new text"
                })
            })
            .navigationTitle("onAppear BC")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
