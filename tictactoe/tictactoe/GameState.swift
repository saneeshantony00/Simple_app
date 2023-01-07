//
//  GameState.swift
//  tictactoe
//
//  Created by saneesh antony on 2022-10-17.
//

import Foundation

class GameState: ObservableObject
{
    @Published var  board = [[Cell]]()
    @Published var turn = Tile.cross
    
    init(){
      resetBoard()
    }
    
    func  placeTile(_ row: Int,_ Column: Int)
    {
        if(board[row][Column].tile != Tile.empty){
            return
        }
        board[row][Column].tile = turn == Tile.cross ? Tile.cross : Tile.Nought
    }
    
    func resetBoard()
    {
        var newBoard = [[Cell]]()
        
        for _ in 0...2
        {
            var row = [Cell]()
            for _ in 0...2
            {
                row.append(Cell(tile: Tile.empty))
            }
            newBoard.append(row)
        }
        
        board = newBoard
    }
    
    
}
