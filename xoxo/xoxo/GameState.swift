//
//  GameState.swift
//  xoxo
//
//  Created by saneesh antony on 2022-10-13.
//

import Foundation

class GameState: ObservableObject
{
    @Published var board = [[cell]]()
    @Published var turn = Title.cross
    
    init()
    {
        resetBoard()
        
    }
    func placeTitle(_ row: Int,_ column: Int)
    {
        if(board[row][column].title != Title.empty)
        {
            return
        }
        board[row][column].title = turn == Title.cross ?  Title.cross : Title.Nought
    }
    func resetBoard()
    {
        var newBoard = [[cell]]()
        for _ in 0...2
        {
            var row = [cell]()
            for _ in 0...2
            {
                row.append(cell(title: Title.empty))
            }
            newBoard.append(row)
        }
        board = newBoard
    }

    
} 
