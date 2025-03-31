//
//  FocusStateBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 29/03/25.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @State private var username: String = ""
    @FocusState private var usernameInFocus: Bool
    @State private var password = ""
    @FocusState private var passwordInFocus: Bool
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            TextField("Add your name here...", text: $password)
                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            
            
            Button("sign up") {
                passwordInFocus.toggle()
            }
            
            Button("toggle focus state") {
                usernameInFocus.toggle()
            }
        }
        .padding(40)
//        .onAppear(){
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true

        
    }
}

#Preview {
    FocusStateBootcamp()
}
