//
//  ObservableBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/03/25.
//

import SwiftUI

// Step 1 conforms to @Observable:
@Observable class ObservableViewModel {
    
    //Step2: No need for published, its just a normal var now
     var title: String = "Hello, World!"
}

struct ObservableBootcamp: View {
    
    //Step 2: Initialize it only with State, no need for StateObject
    @State private var viewModel = ObservableViewModel()
    var body: some View {
        VStack {
            Button(viewModel.title) {
                viewModel.title = "Button Tapped!"
            }
            SomeChildViewModel(viewModel: viewModel)
            SomeThirdViewModel()
        }
        //step 3: remove the object of enviroment. Its no longer enviromentObject
        .environment(viewModel)
    }
}


//step : observedObject is not Bindable
struct SomeChildViewModel: View {
    @Bindable var viewModel: ObservableViewModel
    var body: some View {
        
        Button(viewModel.title) {
            viewModel.title = "Anything"
        }
    }
}

//step 3: remove object of enviroment, its just enviroment

struct SomeThirdViewModel: View {
    @Environment(ObservableViewModel.self) var viewModel
    var body: some View {
        
        Button(viewModel.title) {
            viewModel.title = "third one"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
