//
//  ContentView.swift
//  xoxo
//
//  Created by saneesh antony on 2022-10-13.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameState = GameState()
    
    var body: some View {
        let borderSize = CGFloat(5)
        let n = 2
        
        VStack(spacing: borderSize)
        {
            ForEach(0...n, id:\.self)
            {
                row in
                HStack(spacing: borderSize)
                {
                    ForEach(0...n, id:\.self)
                    {
                        column in
                        
                      //  let cl = gameState.board[row][column]
                        
                       Text(displayTitle())
                        .font(.system(size: 60))
                       // .foregroundColor(cl.displayColor() )
                        .bold()
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .aspectRatio(1,contentMode: .fit)
                        .background(Color.white)
                        
                        .onTapGesture {
                           gameState.placeTitle(row, column)
                        }
                    }
                }
            }
         }
        .background(Color.black)
        padding()
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
