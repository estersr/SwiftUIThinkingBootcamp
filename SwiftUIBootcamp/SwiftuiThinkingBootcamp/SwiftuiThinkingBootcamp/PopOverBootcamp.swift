//
//  PopOverBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                
                Button("Button") {
                     
                        showNewScreen.toggle()
                    
                }
                .font(.largeTitle)
                Spacer()
            }
            
            
            
            //Method 1 - sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                 NewScreen()
//            })
            
            
            // METHOD 2 - TRANSITIONS
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .zIndex(2.0) //this for the zstack show above the vstack and slide well instead of desappear when u click button x
            
            //METHOD 3 -- ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
            
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            Button(action: {
                showNewScreen.toggle()
              //  dismiss()
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
    PopOverBootcamp()
}

