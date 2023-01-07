//
//  LocationView.swift
//  sanHomeLocation
//
//  Created by saneesh antony on 2022-08-20.
//

import SwiftUI

struct LocationView: View {
    @StateObject var myLocation = MyLocation()
    //@EnvironmentObject var mylocation : MyLocation
    var body: some View {
        VStack{
            
            if let location = myLocation.location {
                Text("your location coordinates are =\(location.longitude),\(location.latitude)")
            }else {
              
            }
            
            Button("press me"){
                myLocation.requestLoc()
                print("button taped")
                print("my location is = \(myLocation)")
            }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
}
