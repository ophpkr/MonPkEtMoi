//
//  Prise.swift
//  Project Swift
//
//  Created by Ophelie on 15/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation

class Prise: NSObject{
    
    var dateHeurePrevue : Date
    var qtteAPrendre : Int
    var aEtePrise : Bool
    var dateReellePrise : Date?
    
    init(dateHPrev : Date, qtte : Int){
        self.dateHeurePrevue = dateHPrev
        self.qtteAPrendre = qtte
        self.aEtePrise = false
    }
    
    ///'Prise' -> 'Bool' -- retourne vrai si la prise a été prise en retard, faux sinon
    ///
    /// - Returns: 'Bool' vrai si prise en retard, faux sinon. Si la dateHeurePrevue n'est pas encore passée, retourne une erreur
    
    func priseEnRetard() -> Bool{
        var priseRetard : Bool
        if !aEtePrise{
            fatalError("Le médicament n'a pas ete pris")
        }else{
            if self.dateHeurePrevue.compare(self.dateReellePrise!) == .orderedDescending{
                priseRetard = true
            }else{
                priseRetard = false
            }
        }
        return priseRetard
    }
    
    ///'Prise' -> Date -- donne le temps écoulé entre l'heure à laquelle aurait du être prise la prise et l'heure à laquelle elle a effectivement été prise
    ///
    /// - Returns : Date qui est le temps écoulé entre la prise théorique et la prise réelle. Si la prise n'a pas été prise, renvoie une erreur
    
    func tempsDecalagePrise() -> DateInterval{
        var intval : DateInterval
        if !aEtePrise{
            fatalError("Le médicament n'a pas ete pris")
        }else{
            intval = DateInterval(start : self.dateHeurePrevue, end : self.dateReellePrise!)
        }
        return intval
    }
}


