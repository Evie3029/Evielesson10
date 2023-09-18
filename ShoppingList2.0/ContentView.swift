//
//  ContentView.swift
//  ShoppingList2.0
//
//  Created by Evelyn Seah Jue Rui on 21/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var textInTextField = ""
    @State var Toilet = false
    @State var Graden = false
    @State var Vegy = false
    @State var Fwuits = false
    @State var swiftUIviewOpen = false
    @State var createNewOpen = false
    @State var sheet2Shown = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("Utilities")
                    .contextMenu {
                        Button {
                            Toilet = true 
                        }label: {
                            Text("Toiletries")
                        }
                        
                        Divider()
                        Button {
                            Graden = true
                        }label: {
                            Text("Gardening")
                        }
                        .navigationTitle("Groceries")
                    }
                Text("Food")
                    .contextMenu {
                        Button {
                            Vegy = true
                        }label: {
                            Text("Vegetables")
                        }
                        Button {
                            Fwuits = true
                        }label: {
                            Text("Fruits")
                        }
                    }
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button {
                                sheet2Shown.toggle()
                            } label: {
                                Text("Add text")
                            }
                            .sheet(isPresented: $sheet2Shown){
                            }
                        }
                    }
            }
            .sheet(isPresented: $Toilet) {
                DetailView()
            }
            .sheet(isPresented: $Graden) {
                DetailView2()
            }
            .sheet(isPresented: $Vegy) {
                Vegetable()
            }
            .sheet(isPresented: $Fwuits){
                SwiftUIView()
            }
            
        }
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
}
