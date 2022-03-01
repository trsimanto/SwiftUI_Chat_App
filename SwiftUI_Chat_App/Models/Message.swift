//
//  Message.swift
//  SwiftUI_Chat_App
//
//  Created by Towhid on 3/1/22.
//

import Foundation

//Identify protocal use so each item has a uniq id
// codeabel : use for encode and decode [conver data firestore model to code model and vice-versa]
struct Message : Identifiable , Codable {
    var id: String
    var text : String
    var received : Bool
    var timestamp : Date
}
