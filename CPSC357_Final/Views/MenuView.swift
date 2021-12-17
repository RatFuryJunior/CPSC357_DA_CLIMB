//
//  MenuView.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/8/21.
//

import SwiftUI
//called at start to show the main menu:
//contains Holds
//contains maps
//contains view for the moves
//contains references
struct MenuView: View {
    @StateObject private var menuChoiceStore : DataStore = DataStore(datas: rootData)
    @StateObject var referenceStore : DataStore = DataStore(datas: referenceData)
    @State public var i:Int = 0
    var body: some View {
        VStack{
            NavigationView{
                List {
                    //displays the holds menu
                    NavigationLink(destination: HoldsView()){
                        HStack {
                            Image("MainMenuHolds")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                                //.navigationBarHidden(true)(Text("Da Holds"))
                            Text("Da Holds")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                       
                    }
                    .navigationTitle(Text("Da Menu"))
                    //displays the moves menu
                    
                    NavigationLink(destination: MovesView()){
                        HStack {
                            Image("MainMenuMoves")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                            Text("Da Moves")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                    }
                    //displays maps view
                    NavigationLink(destination: MapsView()){
                        HStack {
                            Image("MainMenuMap")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                            Text("Da Map")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                    }
                    //for reference view
                    NavigationLink(destination: ReferenceView(chosenList: referenceData[0])){
                        HStack {
                            Image("MainMenuReferences")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 60)
                            Text("Da References")
                                //Text(datas.imageName).fontWeight(.light)
                        }
                    }
                    //.navigationTitle(Text("Da Climb"))
                    
                }
                
                //.navigationBarTitleDisplayMode(.inline)
                //.navigationBarBackButtonHidden(true)
            }
        }
    }
}
//allows for main menu preview
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
