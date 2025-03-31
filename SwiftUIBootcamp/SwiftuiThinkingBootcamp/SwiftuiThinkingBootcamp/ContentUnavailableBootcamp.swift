//
//  ContentUnavailableBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/03/25.
//

import SwiftUI

struct ContentUnavailableBootcamp: View {
    var body: some View {
        
        ContentUnavailableView.search
        
        ContentUnavailableView("No internet connection",
                               systemImage: "wifi.slash",
                               description: Text("please connect to the internet"))
    }
}

#Preview {
    ContentUnavailableBootcamp()
}
