//
//  NavigationViewBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                //❇️ it works like a button, but when we click it, it leads us to a new destination/view
                NavigationLink("Hello, world", destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text("Hello, World!")
                
            }
            //put this INSIDE the NavigationView
            .navigationTitle("All inbox")
            
            //to put buttons on the navigation left and right. U use this instead of navigationbarItem now
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: MyOtherScreen()) {
                        
                        HStack {
                            Image(systemName: "person.fill")
                            Image(systemName: "flame.fill")
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: MyOtherScreen()) {
                        Image(systemName: "gear")
                    }
                    
                }
            }
            
            //❇️this is meant to change the style of the navigation title. .automatic is the default one, so u dont need to use it for this case, just the command .navigationTitle
            //    .navigationBarTitleDisplayMode(.inline)
            
            //to hide the navigationBar title. Sometimes we do this because we want to use on the view a navigationLink
            //  .navigationBarHidden(true)
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
            //sometimes you dont want that default back to the screen button, so you can use this:
                .navigationBarHidden(true)
            
            //you can keep adding more navigation link in here
            
            VStack {
                
                //with this, after u hide de NavigationBar, u can create ur own backbutton to goback to the main view using the @enviroment dismiss.
                Button("BACK BUTTON") {
                    dismiss()
                    
                }
                NavigationLink("Click here", destination: Text("Third screen"))
            }
        }
    }
}


#Preview {
    NavigationViewBootcamp()
}
