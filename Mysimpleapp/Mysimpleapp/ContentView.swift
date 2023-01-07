//
//  ContentView.swift
//  Mysimpleapp
//
//  Created by saneesh antony on 2023-01-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("My gym world ")
                .background(Color.gray .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/))
                .font(.largeTitle)
        
            Image("logo")
                .resizable()
                .aspectRatio(CGSize(width: 3, height: 3), contentMode: .fit)
                
            
                Spacer()
        }
        .padding()
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
