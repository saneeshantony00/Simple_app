//
//  Cell.swift
//  tictactoe
//
//  Created by saneesh antony on 2022-10-16.
//
import Foundation
import SwiftUI
struct Cell
{
    var tile: Tile
    
    func displayTile() -> String
    {
        switch(tile){
            case Tile.Nought:
            return "0"
        case Tile.cross:
            return "X"
        default:
            return ""
        }
    }
    func tileColor() -> Color
    {
        switch(tile){
            case Tile.Nought:
            return Color.red
        case Tile.cross:
            return Color.black
        default:
            return Color.black
        }
    }
}

enum Tile{
    case Nought
    case cross
    case empty
}
