//
//  ActionsheetBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 03/02/25.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionsheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMypost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                
                Button(action: {
                    actionSheetOption = .isOtherPost
                    showActionsheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionsheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //add code to report this post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("delete")) {
            //add code to delete
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would u like to do?")
        
        switch actionSheetOption {
        case .isMypost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton, deleteButton]
                )
        case .isOtherPost:
            return ActionSheet(
                title: Text("What would u like to do?"),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
        
        
       // return ActionSheet(title: Text("This is the title"))
        
//        let button1: ActionSheet.Button = .default(Text("default"))
//        let button2: ActionSheet.Button = .destructive(Text("destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("title"),
//            message: Text("this is the message"),
//            buttons: [button1, button2, button3]
//        
//        )
        
    }
}

#Preview {
    ActionsheetBootcamp()
}
