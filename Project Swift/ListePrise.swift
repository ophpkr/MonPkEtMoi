//
//  ListePrise.swift
//  Project Swift
//
//  Created by Ophelie on 15/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation

/**
 ListePrise type
 **listePrises**: ListePrise -> [Prise]
 */

/// Set of 'Prise' s
///
///*ajouter_Prise*: 'ListePrise' x 'Prise' -> 'ListePrise' -- ajoute une Prise à la collection
///
///*supprimer_Prise*: 'ListePrise' x 'Prise' -> 'ListePrise' -- supprime une Prise de la collection
///
///*cherche_Prise_par_date*: 'ListePrise' x 'Date' -> '[Prise]' -- retourne une collection de prises qui ont lieu à la date passée en parametre
///
///*comptage*: 'ListePrise' -> 'Int' -- donne le nombre de Prises présentes dans la liste de Prises passée en paramètre
///
///*make_Iterator*: créer un itérateur sur la liste de Prises
///


class ListePrise: Sequence{
    
    fileprivate var pprise : [Prise] = []
    
    //nombre d'elements dans la collection
    var comptage : Int{
        return self.pprise.count
    }
    
    ///'ListePrise' x 'Prise' -> 'ListePrise' -- ajoute une Prise à la collection
    ///
    /// - Parameter prise : 'Prise' la prise à ajouter à la collection
    /// - Returns : 'ListePrise' avec la nouvelle prise ajoutee ou la liste de prises non modifiee si la prise à ajouter existe deja
    
    @discardableResult
    func ajouter_Prise(prise : Prise) -> ListePrise{
            if !self.contains(prise : prise){
                self.pprise.append(prise)
            }
            return self
    }
    
    ///'ListePrise' x 'Prise' -> 'ListePrise' -- supprime une Prise de la collection
    ///
    /// - Parameter prise : 'Prise' la prise à supprimer
    /// - Returns : 'ListePrise' la liste de prises sans la prise passée en parametre. Si la  prise n'existe pas, rien ne se passe
    
    @discardableResult
    func supprimer_Prise(prise : Prise) -> ListePrise{
        if let i = self.pprise.index(of: prise){
            self.pprise.remove(at: i)
        }
        return self
        
    }
 
    
    ///'ListePrise' x 'Date' -> '[Prise]' -- retourne une collection de prises qui ont lieu à la date passée en parametre
    ///
    /// - Parameters : 'Date' pour laquelle nous voulons récupérer toutes les prises qui ont lieu
    /// - Returns : '[Prise]' l'ensemble des prises qui ont lieu la journée
    /*func cherche_Prise_par_date(date: Date){
        var tabDate : [Prise] = []
        for prise : Prise in self.pprise{
            
        }
        
    }*/
    
    func contains(prise : Prise) -> Bool{
        return self.pprise.contains(where: {$0===prise})
    }
    
    subscript(index: Int) -> Prise {
        get {
            guard (index>=0) && (index<self.comptage) else{
                fatalError("index out of range")
            }
            return self.pprise[index]
        }
        set(newValue) {
            guard (index>=0) && (index<self.comptage) else{
                fatalError("index out of range")
            }
            self.pprise[index]=newValue
        }
    }
    
    func makeIterator() -> ItListePrise{
        return ItListePrise(coll: self)
    }
    
}


///Iterator sur ListePrise

struct ItListePrise : IteratorProtocol{
    
    private var courant: Int = 0
    private let collection : ListePrise
    
    fileprivate init(coll : ListePrise){
        self.collection = coll
    }
    
    /// réinitialisation iterator
    ///
    /// - Returns : iterator réinitialisé
    @discardableResult
    mutating func reinitialiser() -> ItListePrise{
        self.courant = 0
        return self
    }
    ///
    @discardableResult
    mutating func next() -> Prise?{
        guard self.courant < self.collection.comptage else{
            return  nil
        }
        let PriseSuivante = self.collection.pprise[self.courant]
        self.courant += 1
        return PriseSuivante
    }
    
    ///
    var aTermine : Bool{
        return self.courant < self.collection.comptage
    }
    
}
