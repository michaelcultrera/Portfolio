//
//  Adidas+CoreDataProperties.swift
//  SneakersApp
//
//  Created by Michael Cultrera on 2021-01-23.
//
//

import Foundation
import CoreData

//extension of Adidas class defined in other file in folder
//make sure this has all attributes, may need to regenerate if attribute is added
extension Adidas {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Adidas> {
        return NSFetchRequest<Adidas>(entityName: "Adidas")
    }

    @NSManaged public var name: String?
    @NSManaged public var color: String?

}

extension Adidas : Identifiable {

}
