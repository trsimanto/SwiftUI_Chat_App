//
//  ContentView.swift
//  SwiftUI_Chat_App
//
//  Created by Towhid on 3/1/22.
//

import SwiftUI

struct ContentView: View {
    
    var messageArray = ["Hello you","How are you doing?","I've been buliding SwiftUI applications from scratch and it's so much fun!"]
    var body: some View {
        VStack {
             TitleRow()
            ScrollView{
                ForEach(messageArray, id: \.self ){ text in
                    MassageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))

                }
            }.padding(.top , 10)
            .background(.white)
                
        }.frame(maxWidth: .infinity)
        .background(Color("Peach"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
