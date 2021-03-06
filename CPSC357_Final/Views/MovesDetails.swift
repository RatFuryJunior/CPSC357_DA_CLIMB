//
//  MovesDetails.swift
//  CPSC357_Final
//
//  Created by Alberto Chi Kan Ng on 12/11/21.
//

import SwiftUI


//Shows details of the moves, this has the contents for the JSON
//Read in info and allows for the user to read what info that they want
struct MovesDetails: View {
    @StateObject private var movesChoiceStore : DataStore = DataStore(datas: holdsData)
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
//allows for preview of moves details
struct MovesDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovesDetails(chosenList: movesData[0])
    }
}
