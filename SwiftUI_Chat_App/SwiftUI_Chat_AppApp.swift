//
//  SwiftUI_Chat_AppApp.swift
//  SwiftUI_Chat_App
//
//  Created by Towhid on 3/1/22.
//

import SwiftUI
import Firebase



@main
struct SwiftUI_Chat_AppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
