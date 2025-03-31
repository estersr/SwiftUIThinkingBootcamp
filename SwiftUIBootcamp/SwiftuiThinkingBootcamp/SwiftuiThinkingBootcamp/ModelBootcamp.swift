//
//  ModelBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 18/03/25.
//

import SwiftUI

struct UserModel: Identifiable {
    // Identifiable requires an `id` property
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
        UserModel(displayName: "Emily", username: "em123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Nick", username: "nick123", followerCount: 100, isVerified: false),
        UserModel(displayName: "Sam", username: "sam123", followerCount: 100, isVerified: false),
        UserModel(displayName: "Chris", username: "chris123", followerCount: 200, isVerified: true)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in // Use `users` instead of `$users`
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 30, height: 30)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)") // Convert Int to String
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}
        

#Preview {
    ModelBootcamp()
}
