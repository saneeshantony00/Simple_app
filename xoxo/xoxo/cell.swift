//
//  cell.swift
//  xoxo
//
//  Created by saneesh antony on 2022-10-13.
//

import Foundation
import SwiftUI

struct cell
{
    var title : Title
    //first function
    func displayTitle() -> String
    {
       switch(title)
        {
       case Title.Nought:
           return "0"
       case Title.cross:
           return "X"
       default:
           return ""
       }
    }
    //second function
    func displayColor() -> Color
    {
       switch(title)
        {
       case Title.Nought:
           return Color.red
       case Title.cross:
           return Color.black
       default:
           return Color.black
       }
    }
    
}

enum  Title {
    
    case Nought
    case cross
    case empty
    
}
