//
//  Coin__tratumApp.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 8/11/24.
//

import SwiftUI

@main
struct Coin__tratumApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
            
        }
    }
}
