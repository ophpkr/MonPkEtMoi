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
///*maj_ListePrescription*: 'ListePrescription' -> 'ListePrescription' -- supprime les prescriptions obsolètes
///
///*existe_Medicament*: 'ListePrescription' x 'Medicament' -> Bool -- retourne vrai s'il existe une prescription qui concerne le médicament passé en paramètre
///
///*compter_Prescription*: 'ListePrescription' -> Int -- donne le nombre de prescriptions présentes dans la liste de prescriptions passée en paramètre
///
///*make_Iterator*: créer un itérateur sur la liste de prescriptions



class ListePrescription : Sequence{
    fileprivate var pprescription : [Prescription] = []
    
}
