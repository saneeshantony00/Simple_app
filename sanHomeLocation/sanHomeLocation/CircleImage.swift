//
//  CirlceImage.swift
//  sanHomeLocation
//
//  Created by saneesh antony on 2022-08-20.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("IMG_1615")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
        
            .overlay { (Circle().stroke(.white, lineWidth: 8)) }
            .shadow(radius: 7)
    }
        
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
