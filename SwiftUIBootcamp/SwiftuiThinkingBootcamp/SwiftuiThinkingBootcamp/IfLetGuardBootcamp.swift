//
//  IfLetGuardBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 12/03/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    /*
     What if instead of giving an empty "" we wanted to make the @State var displayText: String = "" to be an optional nil? It would show an error if u made it optional, because u cant display it like that. So you would use if let
     */
    @State var displayText: String? = nil
    
    @State var isLoading: Bool = false
    
    @State var currentUserID: String? = nil
    var body: some View {
        NavigationView {
            VStack {
                Text("Practice safe coding")
                
                //what this is saying is: if there is value on displaytext, then run text, but if there isnt, text will never run and the code will be skipped.
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
                
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    
    func loadData() {
        //so we only gonna run this if there is an ID.
        if let userID = currentUserID {
            isLoading = true
            //on a normal app you would have a call to ur database to download something instead of this dispatch, and u would display what u downloaded.
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data. User id \(userID)"
                isLoading = false
            }
        } else {
            displayText = "there is no user ID"
        }
    }
    
    func loadData2() {
        //we are saying 'guard, create a new var called userID, and it will be the value in currentUserID. If its nil, dont create this new var and this will run. return basically means get out of this funciton and nothing below it will execute.
        guard let userID = currentUserID else {
            displayText = "error. no user"
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data. User id \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
