//
//  TextfieldBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 11/02/25.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var textfieldText = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type...", text: $textfieldText)
                //  .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("textfield bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textfieldText.count >= 3 {
            return true
        }
        return false
    }
    
    
  func saveText() {
      dataArray.append(textfieldText)
      textfieldText = "" // pra sumir o texto q vc typed da textfield
    }
    
}

#Preview {
    TextfieldBootcamp()
}
