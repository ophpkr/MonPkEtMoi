//
//  inscriptionController.swift
//  Project Swift
//
//  Created by Ophelie PIEKAREK on 13/03/2018.
//  Copyright © 2018 Hamelina EHAMELO. All rights reserved.
//

import UIKit

class InscriptionController: UIViewController {
    @IBOutlet weak var nom: UITextField!
    @IBOutlet weak var prenom: UITextField!
    @IBOutlet weak var telephone: UITextField!
    
    /*@IBAction func valider(_ sender: UIButton) {
        self.saveNewPerson(avecNom: nom.text!, avecPrenom: prenom.text!, avecTel: telephone.text!)
    }
    func alertError(errorMsg error : String, userInfo user: String = ""){
        let alert = UIAlertController(title: error,
                                      message: user,
                                      preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Ok",
                                         style: .default)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    func saveNewPerson(avecNom nom:String, avecPrenom prenom:String, avecTel tel:String){
        //
        guard (UIApplication.shared.delegate as? AppDelegate) != nil else{
            self.alertError(errorMsg: "Cette personne ne peut pas être enregistrée", userInfo: "Raison inconnue")
            return
        }
        let context = AppDelegate.persistentContainer.viewContext
        //Creer une Person managedObject
        let person = Patient(context: context)
        //modifier maintenant son nom
        person.nomPersonne = nom
        person.prenomPersonne = prenom
        person.numTelPersonne = telephone
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
}
