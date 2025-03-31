//
//  NativePopOverBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct NativePopOverBootcamp: View {
    
    @State private var showPopOver: Bool = false
    @State private var feedbackOptions: [String] = [
        "👹 bad", "😒 neutral", "😊 good"
    ]
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("click me") {
                showPopOver.toggle()
            }
            .padding(20)
            .background(.yellow)
            
            .popover(isPresented: $showPopOver, attachmentAnchor: .point(.top), content: {
                ScrollView {
                    VStack(alignment: .leading, spacing: 12, content: {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {
                                
                            }
                            if option == feedbackOptions.last {
                                Divider()
                            }
                        }
                    })
                }
                .padding(20)
                .presentationCompactAdaptation(.popover)
            })

                
            }
        }
    }


#Preview {
    NativePopOverBootcamp()
}

//     .popover(isPresented: $showPopOver) {
//                Text("Hello, world!")
//
//                //you need to add this modifer so it doesnt look like a sheet, but a pop over
//                    .presentationCompactAdaptation(.popover)
