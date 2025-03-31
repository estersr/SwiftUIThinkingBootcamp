//
//  DatePickerBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 19/02/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date() //if 2018 doesnt workout, its gonna give todays date. (its not gonna happen here cause 2018 is a real date, but still...)
    let endingDate: Date = Date() //equals todays date
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
     //   formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        
        VStack {
            
            Text("Selected date")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date] )
                .accentColor(Color.red) // when u click the option, the UI of the selections get red (not the option itself)
                .datePickerStyle(
                    
                    CompactDatePickerStyle() //padrão
              //      GraphicalDatePickerStyle() //aparece o calendario na tela
             //       WheelDatePickerStyle()
                )
        }
        
        
        
        
        
        
        
        
        
       // DatePicker("Select a date", selection: $selectedDate)
        
        
        
     //   DatePicker("Select date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
        
//        DatePicker("Select date", selection: $selectedDate, in: startingDate...endingDate )
//            .accentColor(Color.red) // when u click the option, the UI of the selections get red (not the option itself)
//            .datePickerStyle(
//                
//                CompactDatePickerStyle() //padrão
//          //      GraphicalDatePickerStyle() //aparece o calendario na tela
//         //       WheelDatePickerStyle()
//            )
        
    }
}

#Preview {
    DatePickerBootcamp()
}
