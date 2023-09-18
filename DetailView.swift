//
//  DetailView.swift
//  ShoppingList2.0
//
//  Created by Evelyn Seah Jue Rui on 21/8/23.
//

import SwiftUI

struct people:Identifiable{
    var id = UUID()
    var marks: Int
    var name: String
}

struct DetailView: View {
    @State var peoples: [people] = [
        .init(
            marks: 0,
            name: "Tissue Paper"
        ),
        .init(
            marks: 0,
            name: "wet wipes" ),
        .init(
            marks: 0,
            name: "Soap" ),
        .init(
            marks: 0,
            name: "Lotion")
    ]
    
    var body: some View {
        List{
            ForEach($peoples, id: \.id) { $peoples in
                Stepper(value: $peoples.marks){
                    Text("\(peoples.name)- i need \(peoples.marks)")
                }
            }
        }
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView()
        }
    }
}
