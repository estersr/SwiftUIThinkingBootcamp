//
//  ResizableSheetBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var showSheet = false
    var body: some View {
        Button("CLick me") {
            showSheet.toggle()
        }
        
        //this sheet covers almost all screen. But if you want to specify the size of the sheet, you just need to use .presentationDetents on the view.
        //.large = full screen
        //.medium = middle of the screen
        // Since its a set, you can add both together, so the view can for example stay in the middle, but be draggable above [.medium, .large]
        //
        .sheet(isPresented: $showSheet, content: {
            MyNextView()
                .presentationDetents([.fraction(0.2)])
              //  .presentationDetents([.medium])
            //to remove that indicator on the top of the sheet
             //   .presentationDragIndicator(.hidden)
            //to dont allow the user to drag down the sheet (usually used on paywalls)
             //   .interactiveDismissDisabled()
        })
    }
}

               
struct MyNextView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
        }
    }
}
               
#Preview {
    ResizableSheetBootcamp()
}
