//
//  IntroView.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 19/03/25.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //background
            
            RadialGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
            } else {
                OnboardingView()
            }
        }
    }
}

#Preview {
    IntroView()
}
