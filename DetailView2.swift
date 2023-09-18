//
//  DetailView2.swift
//  ShoppingList2.0
//
//  Created by Evelyn Seah Jue Rui on 21/8/23.
//
import SwiftUI
struct Garden:Identifiable{
    var id = UUID()
    var marks: Int
    var name: String
}
struct DetailView2: View {
    @State var Tools: [Garden] = [
        Garden(marks: 0, name: "Fertiliser"),
        Garden(marks: 0,name: "Garden Hose" ),
        Garden(marks: 0,name: "Gloves" ),
        Garden(marks: 0,name: "Seeds")
    ]
    
    var body: some View {
        List{
            ForEach($Tools, id: \.id) { $Tool in
                Stepper(value: $Tool.marks){
                    Text("\(Tool.name)- i need \(Tool.marks)")
                }
                  }
                }
             }
          }
struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}


