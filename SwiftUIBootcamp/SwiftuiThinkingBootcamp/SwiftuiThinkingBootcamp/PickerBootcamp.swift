//
//  PickerBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 11/02/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    let filterOptions: [String] = ["recent", "popular", "liked"]
    var body: some View {
        Picker(selection: $selection, label:
                HStack {
            Text("Filter")
            Text(selection)
        }
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .padding(.horizontal)
            .background(.blue)
            .cornerRadius(10)
            
               ,
               content: {
            ForEach(filterOptions, id:\.self) { option in
                Text(option)
                Image(systemName: "heat.fill")
                    .tag(option)
            }
        })
        
        .pickerStyle(MenuPickerStyle())
        
        
        
        
        
        
        
        
        
        //        VStack {
        //            HStack {
        //                Text("Age")
        //                Text(selection)
        //            }
        //
        //            Picker(selection: $selection,
        //                   label: Text("Picker"),
        //                   content: {
        //
        //                ForEach(18..<100) { number in
        //                    Text("\(number)")
        //                        .tag("\(number)")
        //
        //                }
        //            })
        //            .pickerStyle(.wheel)
        //        }
    }
}

#Preview {
    PickerBootcamp()
}
