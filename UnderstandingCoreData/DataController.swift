//
//  DataController.swift
//  UnderstandingCoreData
//
//  Created by Buhle Radzilani on 2024/07/03.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    
    //core data model responsible for getting access to the data inside core data.
    let container = NSPersistentContainer(name: "UnderstandingCoreData")
    
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
}
