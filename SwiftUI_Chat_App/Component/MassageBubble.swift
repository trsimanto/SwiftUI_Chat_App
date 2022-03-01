//
//  MassageBubble.swift
//  SwiftUI_Chat_App
//
//  Created by Towhid on 3/1/22.
//

import SwiftUI

struct MassageBubble: View {
    var message : Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing){
            HStack{
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing )
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing , 25)
            }
            
        }.frame(maxWidth: .infinity , alignment: message.received ? .leading : .trailing )
            .padding(message.received ? .leading : .trailing)
            .padding(.horizontal , 10)
        
    }
    
}

struct MassageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MassageBubble(message: Message(id: "12345", text: "I 've been coading SwiftUI applications from scratch and it's so much fun!", received: true, timestamp: Date()))
    }
}
