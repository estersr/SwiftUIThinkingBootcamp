//
//  SheetsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            //fullscreen works just like sheet
            
//            .fullScreenCover(isPresented: $showSheet, content: {
//               SecondScreen()
//            })
//            
            //❇️OBS: vc so pode usar uma vez por tela/view a sheet da hierarquia
            //NEVER ADD CONDITIONALS ON THE SHEETS (IF ELSE) IT COULD CAUSE MANY ERRORS
            
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}


struct SecondScreen: View {
    
    //❇️ How we dismiss a sheet: we use a variable @enviroment, it justs understands that if we're in a sheet, it should dismiss it correctly
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}



#Preview {
   // SecondScreen()
    SheetsBootcamp()
}
