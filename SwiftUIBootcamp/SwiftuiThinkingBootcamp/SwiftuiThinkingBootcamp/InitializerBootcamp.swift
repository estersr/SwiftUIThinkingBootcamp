//
//  InitializerBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/01/25.
//

import SwiftUI

struct InitializerBootcamp: View {
   // ❇️ we can create outside the body a variable that stores the data inside the code to reuse it
  //  let backgroundColor: Color = Color.red
    
   // ❇️ We want the variable to change colors, so we dont give it a color. The preview will show an error, and you click to fix down on the code, and you can implement the color there
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
     
    }
    //❇️ Instead of manually writing the fruits, you can write an enum. and instead of asking for a title string, you can ask for fruit in the init
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack (spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 23, fruit: .apple)
        InitializerBootcamp(count: 28, fruit: .orange)
    }
}
