//
//  ContentView.swift
//  RealmProject
//
//  Created by Jessi Zimmerman on 10/18/22.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    // Open the local-only default realm
    let realm = try! Realm()

    let itemOne = Symptom(symptom: "headache", details: "light throbbing that starts in the back and wraps to the front", severity: "3/10")
    realm.write {
        realm.add(itemOne)
    }
    // Get all symptoms in the realm
    let symptoms = realm.objects(Symptom.self)
    
    
    var body: some View {
        VStack {
            for symptom in symptoms {
                HStack{
                    Text("Symtom: \(symptom.symptom)")
                        .font(.headline)
                        .foregroundColor(.orange)
                    Text("Severity: \(symptom.severity)")
                        .font(.bold)
                        .foregroundColor(.darkGray)
                    Text("Additional Details: \(symptom.details)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
