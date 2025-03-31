//
//  ProfileView.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 28/03/25.
//

import SwiftUI

struct ProfileView: View {
    //app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("this user is \(currentUserAge ?? 0)")
            Text("their gender \(currentUserGender ?? "unknown")")
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .onTapGesture {
            signOut()
        }
        
        Text("sign out")
            .foregroundStyle(.white)
            .font(.headline)
            .frame(width: 200, height: 50)
            .background(.black)
            .cornerRadius(50)
    }
    
    func signOut() {
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
