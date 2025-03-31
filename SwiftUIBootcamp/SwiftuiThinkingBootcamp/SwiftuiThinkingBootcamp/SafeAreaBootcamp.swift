//
//  SafeAreaBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 01/02/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
            ScrollView {
                Text ("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                }
            }
            .background(
                Color.red
                    .ignoresSafeArea() //you can add this here without the need of the Zstack, because background is a view of their own
                
            )
    }
        
        
        
        
        
        
        
//        ZStack {
//            //background:
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            //Foreground:
//            
//            
//            VStack {
//            Text("Hello, World!")
//                Spacer()
//        }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//  

}

#Preview {
    SafeAreaBootcamp()
}
