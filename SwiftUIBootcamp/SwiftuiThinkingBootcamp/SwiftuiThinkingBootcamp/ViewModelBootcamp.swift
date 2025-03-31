//
//  ViewModelBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 18/03/25.
//

import SwiftUI


struct FruitModel: Identifiable {
    //this creates an id for evey item so we can loop over
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}


// ObservableObject basically means that something in this class is going to be observed.
class FruitViewModel: ObservableObject {
    //notice that we didnt use the @State, because State only goes to views, structs.. and this class is related to the data and not the View.
    // In a class we use, instead of @State, we use @Published. This property has lots of cool features, but in here, its purpose is to do the same things of @State but in a class.
    //When the fruitArray is changed, it notifies the FruitVieModel that it has to change something (publish the new changes)
    
   @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    
    func getFruit() {
        let fruit = FruitModel(name: "Bananas", count: 10)
        let fruit2 = FruitModel(name: "Oranges", count: 15)
        let fruit3 = FruitModel(name: "Pineapple", count: 20)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            //we use self to referance that its talking about the current view we are inside. not a big deal.
            self.fruitArray.append(fruit)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
        }
    }
        func deleteFruit(index: IndexSet) {
            fruitArray.remove(atOffsets: index)
            
        }
}


struct ViewModelBootcamp: View {

    //StateObject is the same thing of observedObject except that if this view reload/rerender this object will persist and not refresh, and this is a better option when our view holds everything of our app.
    // Tip: if its the first place you are creating in your app, use StateOject, but if you are passing to a second view or subview, use ObservableObject
    
    @StateObject var fruitviewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitviewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitviewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitviewModel.deleteFruit)
                }
               
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink("Random Screen", destination: RandomScreen(fruitViewModel:      fruitviewModel)))
            .onAppear {
                fruitviewModel.getFruit()
            }
        }
    }
}


struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
    
        }
    }
}


#Preview {
   ViewModelBootcamp()

}
