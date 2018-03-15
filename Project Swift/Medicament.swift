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

class Medicament{
    
    private var pnomMedicament :String
    private var pdoseMedicament :Int
    private var pdescriptionMedicament :String?
    
    
    var nomMedicament : String{
        get{ return self.pnomMedicament}
    }
    
    var doseMedicament : Int{
        get{ return self.pdoseMedicament}
    }
    
    var descriptionMedicament : String?{
        get{ return self.pdescriptionMedicament}
    }
    
    init(nom : String, dose: Int, description : String?){
        self.pnomMedicament = nom
        self.pdoseMedicament = dose
        self.pdescriptionMedicament = description
    }
    
}
