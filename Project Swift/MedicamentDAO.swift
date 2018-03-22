//
//  MedicamentDAO.swift
//  Project Swift
//
//  Created by Ophelie on 18/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation
import UIKit
import CoreData


extension Medicament {
    
    static func getNewMedicamentDAO() -> Medicament?{
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return nil
        }
        let moc = appDelegate.persistentContainer.viewContext
        guard let entity = NSEntityDescription.entity(forEntityName: "Medicament", in: moc)else{
            return nil
        }
        return Medicament(entity: entity, insertInto: moc)
    }
}
