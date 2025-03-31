//
//  StepperBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 19/02/25.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 50)
            Stepper("Stepper2: "){
                //increment
                incrementWidth(amount: 10)
            } onDecrement: {
                //decrement
                widthIncrement -= 10
            }
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
