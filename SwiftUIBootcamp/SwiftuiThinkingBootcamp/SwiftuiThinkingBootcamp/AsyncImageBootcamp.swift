//
//  AsyncImageBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 28/03/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure(_):
                Image(systemName: "questionmark.circle")
                    .font(.headline)
            default:
                Image(systemName: "questionmark.circle")
                    .font(.headline)
            }
            
        }
        
        
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 100, height: 100)
        //                .cornerRadius(20)
        //        }, placeholder: {
        //            //this makes that loading circle while its downloading what its going to show
        //            ProgressView()
        //        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
