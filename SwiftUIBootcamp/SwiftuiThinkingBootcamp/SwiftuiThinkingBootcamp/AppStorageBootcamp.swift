//
//  AppStorageBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 19/03/25.
//

import SwiftUI

struct AppStorageBootcamp: View {
    //The key is "name".
    //also, you can access the currentUserName in any view.
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "No username set")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Nick"
                currentUserName = name
            }
        }
    }
}


#Preview {
    AppStorageBootcamp()
}
