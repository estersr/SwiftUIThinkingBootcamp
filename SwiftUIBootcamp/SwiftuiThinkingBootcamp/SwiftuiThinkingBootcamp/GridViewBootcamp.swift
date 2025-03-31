//
//  GridViewBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/03/25.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 20) {
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { columnIndex in
                        
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
                            EmptyView()
                            
                            //for a blank cell
//                            Color.clear
//                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            call(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                            
                            //here for adjusting the columns the way you want individually
//                                .gridColumnAlignment(
//                                    cellNumber == 1 ? .trailing : cellNumber == 4 ? .leading : .center)
//                                    
//                                )
                            
                        }
                    }
                }
                
            }
        }
    }
}
    
    private func call(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
}

#Preview {
    GridViewBootcamp()
}



//        Grid() {
//            GridRow {
//                call(int: 1)
//                call(int: 2)
//                call(int: 3)
//            }
//            Divider()
//            //this asks to the devider dont push the items outside of the grid
//                .gridCellUnsizedAxes(.horizontal)
//
//            call(int: 8)
//
//            GridRow {
//                call(int: 4)
//                call(int: 5)
//            }
//        }
//    }
//
