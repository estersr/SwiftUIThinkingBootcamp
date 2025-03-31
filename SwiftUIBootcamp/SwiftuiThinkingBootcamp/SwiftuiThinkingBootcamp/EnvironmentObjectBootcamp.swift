//
//  EnvironmentBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 19/03/25.
//

import SwiftUI

//ObservedObject
//StateObject
//Enviroment

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "MacBook", "iPod", "Mac mini", "Apple Watch"])
    }
}


struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item),
                                   label: {
                        Text(item)
                    }
                    )
                    
                    
                }
            }
            .navigationTitle("iOS Devices")
        }
        //add the enviroment on the navigationView
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: FinalView(), label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            })
        }
    }
}

struct FinalView: View {
    //to add this you need to make sore that this View (enviromentViewmodel) has an enviroment
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            //background
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) {
                        item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
    
}
