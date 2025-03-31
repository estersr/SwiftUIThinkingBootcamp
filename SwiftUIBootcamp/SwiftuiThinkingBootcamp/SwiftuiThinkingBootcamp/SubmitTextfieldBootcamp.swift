//
//  SubmitTextfieldBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 29/03/25.
//

import SwiftUI

struct SubmitTextfieldBootcamp: View {
    
    @State private var text: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("something to the console")
                }
            
            TextField("Placeholder", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("something to the console")
                }
            
        }
    }
}

#Preview {
    SubmitTextfieldBootcamp()
}
