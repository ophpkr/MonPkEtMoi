//
//  Prescription.swift
//  Project Swift
//
//  Created by Ophelie on 14/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation

/**
 Medicament type
 **pmedicament**: Prescription -> Medicament
 **dateDebutPrescription**: Prescription -> Date
 **dateFinPrescription**: Prescription -> Date
 **dateFinPrescription**: Prescription -> Date
 **listeHeuresPrise**: Prescription -> ListeHeurePrise
 **descriptionPrescription**: Prescription -> String?
 */

///
///*est_Obsolete*: 'Prescription' x 'Date' -> 'Bool' -- indique si la prescription est obsolete à la date passée en parametre
///
///*prescrit_Medicament*: 'Medicament' x 'Prescription' -> 'Bool' -- indique si la prescription concerne le medicament passé en parametre
///


class Prescription{
    
    private var pmedicament : Medicament
    
    var dateDebutPrescription : Date
    var dateFinPrescription : Date
    var listeHeuresPrise : ListePrise
    var descriptionPrescription : String?
    
    var medicament : Medicament{
        get{ return self.pmedicament}
    }

    
    init(medicament : Medicament, dateDeb: Date, dateFin : Date, listeH : ListePrise, description : String?){
        self.pmedicament = medicament
        self.dateDebutPrescription = dateDeb
        self.dateFinPrescription = dateFin
        self.listeHeuresPrise = listeH
        self.descriptionPrescription = description
    }
    
    
    ///'Prescription' x 'Date' -> 'Bool' -- indique si la prescription est obsolete i.e. si la dateFinPrescription dépasse la date passée en parametre
    ///
    /// - Parameter presc : 'Date' date pour laquelle on souhaite savoir si la prescription est obsolete
    /// - Returns : 'Bool' qui est vrai si dateFinPresc est inf ou egale à la date passée en parametre, faux sinon
    
    func est_Obsolete(date : Date) -> Bool{
        var resultat : Bool = true
        if self.dateFinPrescription.compare(date) == .orderedDescending{
            resultat = false
        }
        return resultat
    }
    
    ///'Prescription' x 'Medicament' -> 'Bool' -- indique si le medicament est passé en parametre est celui qui concerne la prescription
    ///
    /// - Parameter med : 'Medicament' medicament pour lequel on souhaite savoir si c'est celui squi concerne la prescription
    /// - Returns : 'Bool' qui est vrai si pmedicament est le medicament passé en parametre, faux sinon
    
    func prescrit_Medicament(med : Medicament) -> Bool{
        var resultat : Bool = false
        if self.medicament === med{
            resultat = true
        }
        return resultat
    }
    
    
    
    
    
    
    
    
}
