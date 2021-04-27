//
//  ContentView.swift
//  SneakersApp
//
//  Created by Michael Cultrera on 2021-01-07.
//

import SwiftUI
import UIKit
import CoreData

struct ContentView: View {
    
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    
    var body: some View {
        
        NavigationView{  //allows users to navigate to other pages
            
        ZStack{
            //Background colour
            Image("Backg")
                .resizable()
                .ignoresSafeArea()
                
            VStack{ //Logo "SneakerTracker" contents inside here
                    
                    Text("Sneaker")
                        .font(Font.custom("Poppins-BoldItalic", size: 50))
                        .multilineTextAlignment(.center)
                        .frame(width: 250, height: 40, alignment: .top)
                    Text("Tracker")
                        .font(Font.custom("Poppins-BoldItalic", size: 50))
                        .multilineTextAlignment(.center)
                        .frame(width: 250, height: 0, alignment: .top)
                    Image("HangingShoes")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 90, alignment: .top)
                 }
                .frame(width: 400, height: 800, alignment: .top)
                
            //Stack pairs of logos on top of each other
            VStack(spacing:-20){
                
                Spacer()
                    .frame(height: 80)
               
                        //Make pair of logos
                        HStack(spacing: -5) {
                        
                            //Goes to page when clicked
                            NavigationLink(destination: AdidasView()){
                                Image("Adidas")
                                    .resizable()
                                    .scaledToFit()
                                }
                        
                            NavigationLink(destination: NikeView()){
                                Image("Nike")
                                    .resizable()
                                    .scaledToFit()
                                }
                        
                            }
                            .frame(width: 400, height: 150, alignment: .center)
                
                    
                         HStack(spacing: -5) {
                            
                            //Goes to page when clicked
                            //NavigationLink(destination: AdidasView()){
                                Image("New Balance")
                                    .resizable()
                                    .scaledToFit()
                                    
                                //}
                        
                            //NavigationLink(destination: NikeView()){
                                Image("Converse")
                                    .resizable()
                                    .scaledToFit()
                                //}
                        
                        }
                        .frame(width: 400, height: 150, alignment: .center)
                        
                        HStack(spacing: -5){
                            
                            //Goes to page when clicked
                            //NavigationLink(destination: AdidasView()){
                                Image("Puma")
                                    .resizable()
                                    .scaledToFit()
                                    
                                //}
                        
                            //NavigationLink(destination: NikeView()){
                                Image("Jordan")
                                    .resizable()
                                    .scaledToFit()
                                //}
                        
                        }
                        .frame(width: 400, height: 150, alignment: .center)
                
                HStack(spacing: -5){
                    
                    //Goes to page when clicked
                    //NavigationLink(destination: AdidasView()){
                        Image("Vans")
                            .resizable()
                            .scaledToFit()
                            
                        //}
                
                   // NavigationLink(destination: NikeView()){
                        Image("Asics")
                            .resizable()
                            .scaledToFit()
                        //}
                
                }
                .frame(width: 400, height: 150, alignment: .center)
                        
                  }
                  .frame(width: 300, height: 700, alignment: .center)
                    
          }
                    
      }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
