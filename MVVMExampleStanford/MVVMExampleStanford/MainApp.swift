//
//  MainApp.swift
//  MVVMExampleStanford
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

@main
struct MainApp: App {
    
    let game = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
