//
//  Model.swift
//  RealmProject
//
//  Created by Jessi Zimmerman on 10/18/22.
//

import Foundation
import RealmSwift


// Creating the symptom class and initializing it
class Symptom: Object {
    @Persisted var symptom = ""
    @Persisted var details = ""
    @Persisted var severity = ""
    
    convenience init(symptom:String, details:String, severity:String){
        self.init()
        self.symptom = symptom
        self.details = details
        self.severity = severity
    }
}


