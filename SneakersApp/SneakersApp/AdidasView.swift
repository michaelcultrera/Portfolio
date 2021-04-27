//
//  AdidasView.swift
//  SneakersApp
//
//  Created by Michael Cultrera on 2021-01-11.
//

import Foundation
import SwiftUI
import UIKit

struct AdidasView: View {
    
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    
    var body: some View {
        
        ZStack{
            Image("AdidasBG")
                .resizable()
                .ignoresSafeArea()
        
            VStack(spacing: 9){
            
                Text("Adidas Sneakers")
                    .font(Font.custom("Poppins-BoldItalic", size: 30))
                    //.lineLimit(1)
                    .frame(width: 300, height: 40, alignment: .top)
                
                //add shoe to the list
                Button(action: {
                    self.isShowPhotoLibrary = true
                }){
                    //plus button to add shoe listing
                    Image(systemName: "plus.circle")
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                }
                
                HStack{
                        
                        Image(uiImage: self.image)
                            .resizable()
                
//                        Text("Hello") //user inputs name of shoe
                }
            }//VStack
            
            //sheet allows the photo library view to be shown over main view
            .sheet(isPresented: $isShowPhotoLibrary) {
                ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
            }
            
            
        } //ZStack
        
    } //body
}





struct AdidasView_Previews: PreviewProvider {
    static var previews: some View {
        AdidasView()
    }
}
