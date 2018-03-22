//
//  Medicament.swift
//  Project Swift
//
//  Created by Ophelie on 14/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation

/**
    Medicament type
 **pnomMedicament**: Medicament -> String
 **pdoseMedicament**: Medicament -> Int
 **pdescriptionMedicament**: Medicament -> String?
*/


class MedicamentModel{
    
    private let dao : Medicament
    
    var nomMedicament : String{
        get{
            return self.dao.nomMedicament!
        }
        set{
            self.dao.nomMedicament = newValue
        }
    }
    
    
    var doseMedicament : Int16{
        get{
            return self.dao.doseMedicament
        }
        set{
            self.dao.doseMedicament = newValue
        }
    }
    
    var descriptionMedicament : String{
        get{
            return self.dao.presentationMedicament!
        }
        set{
            self.dao.presentationMedicament = newValue
        }
    }
    
    init(nom : String, dose: Int16, description : String?){
        guard let dao = Medicament.getNewMedicamentDAO() else{
            fatalError("impossible d'obtenir un dao pour Medicament")
        }
        self.dao = dao
        self.dao.nomMedicament = nom
        self.dao.doseMedicament = dose
        self.dao.presentationMedicament = description
    }
    
}
