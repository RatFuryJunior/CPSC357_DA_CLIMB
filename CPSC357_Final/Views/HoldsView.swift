//
//  HoldsView.swift
//  CPSC357_Final
//
//  Created by Alberto Chi Kan Ng on 12/8/21.
//

import SwiftUI
//This shows the holds details.
//called from the main menu, shows a list of holds for users to pick from to learn about
struct HoldsView: View {
    @StateObject private var holdsChoiceStore : DataStore = DataStore(datas: holdsData)
    @State public var i:Int = 0
    var body: some View {
        VStack{
            List {
                ForEach (holdsChoiceStore.datas) { datas in
                    MenuCell(datas: datas)
                        .navigationTitle(Text("Da Holds"))
                }
                
            }
            //.navigationTitle(Text("Da Holds"))
            //.navigationBarBackButtonHidden(true)
        }
        
    }
}
//Allows for previews
struct HoldsView_Previews: PreviewProvider {
    static var previews: some View {
        HoldsView()
    }
}
