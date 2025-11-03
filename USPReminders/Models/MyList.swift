//
//  MyList.swift
//  USPReminders
//
//  Created by joe on 11/3/25.
//

import Foundation
import CoreData
import AppKit

@objc(MyList)
class MyList: NSManagedObject {
    
}

extension MyList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }

    @NSManaged public var color: NSColor?
    @NSManaged public var name: String?

}

extension MyList : Identifiable {

}
