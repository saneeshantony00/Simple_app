//
//  ContentView.swift
//  tictactoe
//
//  Created by saneesh antony on 2022-10-16.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var gameState = GameState()
    
    var body: some View {
        
        let bordersize = CGFloat(5)
        
        VStack(spacing: bordersize) {
    
            ForEach (0...2, id: \.self)
            {
                row in
                HStack (spacing: bordersize)
                {
                    ForEach (0...2, id: \.self)
                    {
                        Column in
                        
                        let cell = gameState.board[row][Column]
                        
                        Text (cell.displayTile())
                            .font(.system(size: 60))
                        
                            .foregroundColor(cell.tileColor())
                        
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight:  .infinity)
                            .aspectRatio(1, contentMode: .fit)
                           .background(Color.white)
                           .onTapGesture {
                               gameState.placeTile(row, Column)
                           }
                    }
                }
                
            }
            
        }
        .background(Color.black)
        .padding()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
