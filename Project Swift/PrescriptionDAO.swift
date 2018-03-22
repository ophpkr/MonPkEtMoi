//
//  PrescriptionDAO.swift
//  Project Swift
//
//  Created by Ophelie on 18/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//


import Foundation
import UIKit
import CoreData


extension PrescriptionMedicale{
    
    static func getNewPrescription() -> PrescriptionMedicale?{
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return nil
        }
        let moc = appDelegate.persistentContainer.viewContext
        guard let entity = NSEntityDescription.entity(forEntityName: "PrescriptionqMedicale", in: moc)else{
            return nil
        }
        return PrescriptionMedicale(entity: entity, insertInto: moc)
    }
}
