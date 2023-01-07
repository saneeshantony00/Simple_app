//
//  ContentView.swift
//  sanHomeLocation
//
//  Created by saneesh antony on 2022-08-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
          //  if let location = myLocation = MyLocation(){
    
        MapView()
           // ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
        
        VStack(alignment: .leading){
            Text("Saneesh Antony")
                .font(.title)
                .fontWeight(.bold)
            HStack {
                Text("Victoria park, truro,")
                    .font(.subheadline)

                Text("Nova Scotia")
                    .font(.subheadline)
                LocationView()
            }
        }
        .padding()
        Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
