//
//  ContentView.swift
//  Shared
//
//  Created by Matthew on 12/8/21.
//

import SwiftUI

struct ContentView: View { // This shows the main application. This loads the main menu for the application
    var body: some View {
        MenuView()
    }
}
//this allows for preview of the application
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
