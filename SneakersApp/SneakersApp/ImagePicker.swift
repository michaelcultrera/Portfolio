//
//  ImagePicker.swift
//  SneakersApp
//
//  Created by Michael Cultrera on 2021-04-24.
//

import Foundation
import UIKit
import SwiftUI

//Pick the image from camera roll or camera
struct ImagePicker: UIViewControllerRepresentable{
    
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @Binding var selectedImage: UIImage
    @Environment(\.presentationMode) public var presentationMode
    
    //allows access to photo library/camera
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
     
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = false
            imagePicker.sourceType = sourceType  //default set to photo library
            imagePicker.delegate = context.coordinator
     
            return imagePicker
        }
    
    //handles any changes to UIImagePickerController, left alone for now
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
     
        }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
}

//allows UIImagePickerController from ImagePicker class to adopt protocols to grab the photos
final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var parent: ImagePicker

    init(_ parent: ImagePicker) {
        self.parent = parent
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            parent.selectedImage = image
        }

        parent.presentationMode.wrappedValue.dismiss()
    }

}


