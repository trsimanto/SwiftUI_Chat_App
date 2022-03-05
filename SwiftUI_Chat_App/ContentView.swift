//
//  ContentView.swift
//  SwiftUI_Chat_App
//
//  Created by Towhid on 3/1/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MassagesManager()
    
    var body: some View {
        VStack {
            VStack {
                 TitleRow()
                ScrollViewReader { proxi in
                    ScrollView{
                        ForEach(messagesManager.messages, id: \.id ){ message in
                            MassageBubble(message: message )

                        }
                    }.padding(.top , 10)
                        .background(.white)
                        .cornerRedius(30,corners: [.topLeft , .topRight])
                        .onChange(of: messagesManager.lastMessageId){ id in
                            withAnimation{
                                proxi.scrollTo(id, anchor: .bottom)
                            }
                        }
                }
                    
            }.frame(maxWidth: .infinity)
                .background(Color("Peach"))
            MessageField()
                .environmentObject(messagesManager)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
