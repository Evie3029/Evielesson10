//
//  SwiftUIView.swift
//  ShoppingList2.0
//
//  Created by Evelyn Seah Jue Rui on 21/8/23.
//

import SwiftUI
struct Fruits:Identifiable{
    var id = UUID()
    var Num: Int
    var Yey: String
}

struct SwiftUIView: View {
    @State var Nom: [Fruits] = [
        Fruits(
            Num: 0,
            Yey: "Orange"
         ),
        Fruits(
            Num: 0,
            Yey: "Banana" ),
        Fruits(
            Num: 0,
            Yey: "Apple" ),
        Fruits(
            Num: 0,
            Yey: "Strawberries")
    ]
    
    var body: some View {
        List{
            ForEach($Nom, id: \.id) { $Noms in
                Stepper(value: $Noms.Num){
                    Text("\(Noms.Yey)- i need \(Noms.Num)")
                }
                  }
                }
                  }
                }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
