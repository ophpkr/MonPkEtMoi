//
//  Prise.swift
//  Project Swift
//
//  Created by Ophelie on 15/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation

class Prise{
    
    var dateHeurePrevue : Date
    var qtteAPrendre : Int
    var aEtePrise : Bool
    var dateReellePrise : Date?
    
    init(dateHPrev : Date, qtte : Int){
        self.dateHeurePrevue = dateHPrev
        self.qtteAPrendre = qtte
        self.aEtePrise = false
    }
}

