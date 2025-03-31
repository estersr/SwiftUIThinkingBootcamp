//
//  TextEditorBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 11/02/25.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "starting text..."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("texeditor")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
