//
//  MovesView.swift
//  CPSC357_Final
//
//  Created by Alberto Chi Kan Ng on 12/11/21.
//

import SwiftUI
//This shows the mvoes details.
//called from the main menu, shows a list of moves for users to pick from to learn about
struct MovesView: View {
    @StateObject private var movesChoiceStore : DataStore = DataStore(datas: movesData)
    @State private var selection: String? = nil
    @State public var i:Int = 0
    var body: some View {
        VStack{
            List {
                ForEach (movesChoiceStore.datas) { datas in
                    MenuCell(datas: datas)
                        .navigationBarTitle(Text("Da Moves"))
                }
            }
            
        }
        
    }
}
//preview for the moves menu
struct MovesView_Previews: PreviewProvider {
    static var previews: some View {
        MovesView()
    }
}

