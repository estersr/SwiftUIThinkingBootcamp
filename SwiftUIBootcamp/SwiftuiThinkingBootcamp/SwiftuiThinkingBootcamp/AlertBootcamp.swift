//
//  AlertBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 03/02/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
   // ❇️ so we give an option, if not one of the cases in the enum, then its nil
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = .yellow
//    @State var alertMessage: String = ""
//    @State var alertTitle: String = ""
    
    enum MyAlerts {
        case sucess
        case error
    }
    
    
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .sucess
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case.sucess:
            return Alert(title: Text("sucess"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
        
        
//        return Alert(title: Text("This is the title"),
//                     message: Text("this is the message"),
//                     primaryButton: .destructive(Text("delete"), action: {
//            backgroundColor = .red
//        }),
//                     secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
