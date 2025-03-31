//
//  MarkupsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 12/03/25.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Banana"
    ]
    @State var showAlert: Bool = false
    
    //MARK: BODY
    /* working copy - things to do:
     1) fix title
     */
    var body: some View {
        NavigationView { //START: NAV
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                .navigationTitle("Documentation ")
                .navigationBarItems(trailing:
                                        Button("Alert", action: {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert")
                })
            }
        } // END: NAV
    }
    
    /// This is a scrollview foreground private var.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            
            Text("Hello")
            ForEach(data, id:  \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    //MARK: FUNCTIONS
    
    ///Gets an alert with specified title
    ///
    /// This function created and returns an alert immediatly. The alert will have a title based on the text  parameter but will not have a message
    /// ```
    /// getAlert(text: "Hi" -> Alert(title: Text("Hi"))
    /// ```
    /// - Warning: there is no additional message in this
    /// - Parameter text: this is the title for the alert
    /// - Returns: an Alert with title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text) )
    }
    
}

// MARK: PREVIEW
#Preview {
    DocumentationBootcamp()
}
