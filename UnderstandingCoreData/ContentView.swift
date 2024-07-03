//
//  ContentView.swift
//  UnderstandingCoreData
//
//  Created by Buhle Radzilani on 2024/07/03.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "universe == 'Star wars'")) var ships: FetchedResults<Ship>
 
    var body: some View {
        VStack{
            List(ships, id: \.self) {ship in
                Text(ship.name ?? "Unknown name")
            }
            
            Button("Add Examples") {
                let ship1 = Ship(context: moc)
                ship1.name = "Enterprise"
                ship1.universe = "Start trek"
                
                let ship2 = Ship(context: moc)
                ship2.name = "Difieant"
                ship2.universe = "Star trek"
                
                
                let ship3 = Ship(context: moc)
                ship3.name = "Millennium Falcon"
                ship3.universe = "Star wars"
                
                let ship4 = Ship(context: moc)
                ship4.name = "Executor"
                ship4.universe = "Star wars"
                
                try? moc.save()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
