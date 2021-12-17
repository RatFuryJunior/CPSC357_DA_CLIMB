//
//  HoldsDetails.swift
//  CPSC357_Final
//
//  Created by Alberto Chi Kan Ng on 12/9/21.
//


import SwiftUI
//This is loaded  by the main menu and naviatgation and is made to show users the definitions o holds
// it load a JSON file that contains hold information
struct holdsDetails: View {
    @StateObject private var holdsChoiceStore : DataStore = DataStore(datas: holdsData)
    let chosenList : Datas
    var body: some View {
        Form {
            Section(header: Text(chosenList.name).font(.headline)) {
                Image(chosenList.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text(chosenList.description)
                    .font(.headline)
            }
        }
    }
}
//allows for preview for the holds view
struct holdsDetails_Previews: PreviewProvider {
    static var previews: some View {
        holdsDetails(chosenList: holdsData[0])
    }
}
