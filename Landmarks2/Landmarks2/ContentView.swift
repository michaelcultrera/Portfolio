//
//  ContentView.swift
//  Landmarks2
//
//  Created by Michael Cultrera on 2021-01-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
        VStack (alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    //.font(.subheadline)
                Spacer()
                Text("California")
                    //.font(.subheadline)
                }
            //These modifiers are applied to all elements inside the HStack
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            //Line Seperator
            Divider()
            Text("About the Rock")
                .font(.title2)
            Text("Turtle Rock is a rock formation in Joshua Tree National Park, California...")
                .italic()
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
