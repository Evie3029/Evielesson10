//
//  Vegetable.swift
//  ShoppingList2.0
//
//  Created by Evelyn Seah Jue Rui on 28/8/23.
//

import SwiftUI
struct Vegie:Identifiable{
    var id = UUID()
    var marks: Int
    var name: String
}
struct Vegetable: View {
    @State var Ew: [Vegie] = [
        Vegie(marks: 0, name: "Rosemary"),
        Vegie(marks: 0,name: "Tomato" ),
        Vegie(marks: 0,name: "Cabbage" ),
        Vegie(marks: 0,name: "Chives")
    ]
    
    var body: some View {
        List{
            ForEach($Ew, id: \.id) { $Veg in
                Stepper(value: $Veg.marks){
                    Text("\(Veg.name)- i need \(Veg.marks)")
                }
                  }
                }
             }
          }
struct Vegetable_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
