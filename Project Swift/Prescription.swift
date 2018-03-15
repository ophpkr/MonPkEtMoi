//
//  Prescription.swift
//  Project Swift
//
//  Created by Ophelie on 14/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

/**
 Medicament type
 **pmedicament**: Prescription -> Medicament
 **dateDebutPrescription**: Prescription -> Date
 **dateFinPrescription**: Prescription -> Date
 **dateFinPrescription**: Prescription -> Date
 **listeHeuresPrise**: Prescription -> ListeHeurePrise
 **descriptionPrescription**: Prescription -> String?
 */
import Foundation

class Prescription{
    
    private var pmedicament : Medicament
    
    var dateDebutPrescription : Date
    var dateFinPrescription : Date
    var listeHeuresPrise : ListeHeurePrise
    var descriptionPrescription : String?
    
    var medicament : Medicament{
        get{ return self.pmedicament}
    }

    
    init(medicament : Medicament, dateDeb: Date, dateFin : Date, listeH : ListeHeurePrise, description : String?){
        self.pmedicament = medicament
        self.dateDebutPrescription = dateDeb
        self.dateFinPrescription = dateFin
        self.listeHeuresPrise = listeH
        self.descriptionPrescription = description
    }
    
}
