//
//  GridBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/01/25.
//

import SwiftUI


//❇️ All grids are lazy by default.


struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
        
        //    GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil)
        
        //   GridItem(.flexible(), spacing: nil, alignment: nil)
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            LazyVGrid (
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                            
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .frame(height: 150)
                            
                        }
                    }
                    Section(header:
                                Text("Section 2")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                            
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .frame(height: 150)
                            
                        }
                    }
                    
                }
            )
        }
    }
}

#Preview {
    GridBootcamp()
}
