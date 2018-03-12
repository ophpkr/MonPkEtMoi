//
//  Medicament.swift
//  Project Swift
//
//  Created by Ophelie PIEKAREK on 20/02/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation


/** 
    Medicament type
 
 **pnom** : Medicament -> String
 **pdosage** : Medicament -> Double
 **pdescription** : Medicament -> String?
*/
class Medicament{

    let nom : String
    let dosage : Double
    let description : String?
    
     init(nom : String, dosage : Double, description : String?){
        self.nom = nom
        self.dosage = dosage
        self.description = description
    }

}
