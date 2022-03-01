//
//  TitleRow.swift
//  SwiftUI_Chat_App
//
//  Created by Towhid on 3/1/22.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1627087820883-7a102b79179a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
    var name = "Towhidur Rahman"
    
    
    var body: some View {
        HStack(spacing: 20){
            
            //asyncronusly load image + closer
            AsyncImage (url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                
            } placeholder: {
                ProgressView ()
            }
            
            VStack(alignment: .leading){
                        Text(name)
                            .font(.title)
                            .bold()
                        Text("Online")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }.frame(width: .infinity, alignment: .leading)
                    
                    Image(systemName: "phone.fill")
                        .foregroundColor(.gray)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(50)
            
        }.padding()
        
        
        
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow().background(Color("Peach"))
    }
}
