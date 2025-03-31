//
//  ToolbarBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct ToolbarBootcamp: View {
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                ScrollView {
                    
                    TextField("placeholder", text: $text)
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .frame(width: 300, height: 50)
                    }
                }
            }
            .navigationTitle(Text("Toolbar"))
            .toolbar {
                
                //there are many options in placement for you to try on. Check that out when you need a more different toolbar.
                
                ToolbarItem(placement: .topBarLeading, content: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.blue)
                        .bold()
                })
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                        .foregroundStyle(.blue)
                        .bold()
                  //  Text("gear")
                    //    .font(.title)
                     //   .background(.red)
                     //   .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen1") {
                    paths.append("screen1")
                }
                Button("Screen2") {
                    paths.append("screen1")
                }
            }
            //we can use this to hide the navigation bar in certain places.
           // .toolbar(.hidden, for: .navigationBar)
        }
        .navigationDestination(for: String.self) { value in
        Text("New screen \(value)")
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
