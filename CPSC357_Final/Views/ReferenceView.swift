//
//  ReferenceView.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/16/21.
//

import SwiftUI
//Simple refrence view that just contians a block of text
//The text has the refreces useds for the application
//Called from the main menu
//Links are not hyperlinked but are what we used for the main info of the application
struct ReferenceView: View {
    @StateObject var referenceStore : DataStore = DataStore(datas: referenceData)
    let chosenList : Datas
    var body: some View {
        Form {
            Section(header: Text("Da References").font(.headline)) {
            
            Text(chosenList.description).font(.headline)
            }
        }
        
    }

}
//Preview for refrence window
struct ReferenceView_Previews: PreviewProvider {
    static var previews: some View {
        ReferenceView(chosenList: referenceData[0])
    }
}
