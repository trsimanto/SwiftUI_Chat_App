//
//  MassagesManages.swift
//  SwiftUI_Chat_App
//
//  Created by MacBook Pro on 5/3/22.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
 


class MassagesManager : ObservableObject {
    @Published private(set) var messages : [Message] = []
    let db = Firestore.firestore()
    
    
    
}
