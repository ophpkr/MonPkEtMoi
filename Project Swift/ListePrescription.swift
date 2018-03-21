//
//  ListePrescription.swift
//  Project Swift
//
//  Created by Ophelie on 15/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import Foundation

/// Set of 'Prescription' s
///
///*ajouter_Prescription*: 'ListePrescription' x 'Prescription' -> 'ListePrescription' -- ajoute une Prescription à la collection
///
///*supprimer_Prescription*: 'ListePrescription' x 'Prescription' -> 'ListePrescription' -- supprime une Prescription de la collection
///
///*maj_ListePrescription*: 'ListePrescription' x 'Date' -> 'ListePrescription' -- supprime les prescriptions  obsolètes à la date pasée en parametre
///
///*existe_Medicament*: 'ListePrescription' x 'Medicament' -> 'Bool' -- retourne vrai s'il existe une prescription qui concerne le médicament passé en paramètre
///
///*comptage*: 'ListePrescription' -> 'Int' -- donne le nombre de prescriptions présentes dans la liste de prescriptions passée en paramètre
///
///*make_Iterator*: créer un itérateur sur la liste de prescriptions
///


class ListePrescription : Sequence{
    fileprivate var pprescription : [Prescription] = []
    
    /// nombre d'elements dans la collection
    var comptage: Int{
        return self.pprescription.count
    }
    
    ///'ListePrescription' x 'Prescription' -> 'ListePrescription' -- ajoute la prescription passée en parametre à la collection. Si la prescription existe deja on ne fait rien
    ///
    /// - Parameter presc : 'Prescription' la prescription à ajouter
    /// - Returns : 'ListePrescription' avec la nouvelle prescription ajoutée ou la liste de prescriptions non modifiée si la prescription à ajouter existe deja
    
    @discardableResult
    func ajouter_Presciption(presc : Prescription) -> ListePrescription{
        if !self.contains(presc : presc){
            self.pprescription.append(presc)
        }
        return self
    }
    
    ///'ListePrescription' x 'Prescription' -> 'ListePrescription' -- supprime une Prescription de la collection
    ///
    /// - Parameter presc : 'Prescription' la prescription à supprimer
    /// - Returns : 'ListePrescription' la liste de prescriptions sans la prescription passée en parametre. Si la  prescription n'existe pas, rien ne se passe
    
    @discardableResult
    func supprimer_Prescription(presc : Prescription) -> ListePrescription{
        if let i = self.pprescription.index(of: presc){
            self.pprescription.remove(at: i)
        }
        return self
    }
    
    ///'ListePrescription' -> 'ListePrescription' -- supprime les prescriptions obsolètes
    ///
    /// - Parameter date : 'Date' la date à laquelle nous nous interessons pour supprimer les prescriptions obsoletes,
    /// - Returns : 'ListePrescription' la liste des prescriptions sans les prescriptions obsoletes.
    
    @discardableResult
    func maj_ListePrescription(date : Date) -> ListePrescription{
        for presc : Prescription in self.pprescription{
            if presc.est_Obsolete(date: date){
                self.supprimer_Prescription(presc: presc)
            }
        }
        return self
    }
    
    ///'ListePrescription' x 'Medicament' -> 'Bool' -- retourne vrai s'il existe une prescription qui concerne le médicament passé en paramètre
    ///
    /// - Parameter med : 'Medicament' le medicament pour lequel on cherche à savoir si une des prescriptions de la liste de prescriptions concerne ce medicament
    /// - Returns : Bool, vrai s'il en existe une, faux sinon
    
    func existe_Medicament(med : Medicament) -> Bool{
        var res : Bool = false
        for presc : Prescription in self.pprescription{
            if presc.prescrit_Medicament(med: med){
                res = true
            }
        }
        return res
    }
    
    /// ListePrescription` x `Prescription` -> `Bool` -- recherche si la prescription passée en parametre existe dans la liste de prescription
    ///
    /// - Parameter presc: `Prescription` la prescription que l'on cherche
    /// - Returns: true si elle existe, faux sinon
    
    func contains(presc : Prescription) -> Bool{
        return self.pprescription.contains(where: {$0===presc})
    }
    
    subscript(index: Int) -> Prescription {
        get {
            guard (index>=0) && (index<self.comptage) else{
                fatalError("index out of range")
            }
            return self.pprescription[index]
        }
        set(newValue) {
            guard (index>=0) && (index<self.comptage) else{
                fatalError("index out of range")
            }
            self.pprescription[index]=newValue
        }
    }
    
    
    
    func makeIterator() -> ItListePrescription{
        return ItListePrescription(coll: self)
    }
    
}
///Iterator sur ListePrescription

struct ItListePrescription : IteratorProtocol{
    
    private var courant: Int = 0
    private let collection : ListePrescription
    
    fileprivate init(coll : ListePrescription){
        self.collection = coll
    }
    
    /// réinitialisation iterator
    ///
    /// - Returns : iterator réinitialisé
    @discardableResult
    mutating func reinitialiser() -> ItListePrescription{
        self.courant = 0
        return self
    }
    ///
    @discardableResult
    mutating func next() -> Prescription?{
        guard self.courant < self.collection.comptage else{
            return  nil
        }
        let prescriptionSuivante = self.collection.pprescription[self.courant]
        self.courant += 1
        return prescriptionSuivante
    }
    
    ///
    var aTermine : Bool{
        return self.courant < self.collection.comptage
    }
    
}
