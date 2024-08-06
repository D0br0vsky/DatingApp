//
//  UsersCardsView.swift
//  DatingApp
//
//  Created by Dobrovsky on 05.08.2024.
//

import SwiftUI

struct UsersCardsView: View {
    var user: CardUser
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("MilkColor"))
                .frame(width: screen.width * 0.5,
                       height: screen.width * 0.7)
                .cornerRadius(10)
            
            VStack {
                Image("Test2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: screen.width * 0.46)
                    .cornerRadius(10)
                
                HStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .cornerRadius(10)
                            .frame(width: screen.width * 0.10, height: screen.width * 0.10)
                        Text("\(user.age)")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .cornerRadius(10)
                            .frame(width: screen.width * 0.34, height: screen.width * 0.10)
                        Text(user.description)
                            .font(.system(size: 20))
                    }
                }
            }
            .frame(width: screen.width * 0.5, height: screen.width * 0.66)
        }
        .shadow(radius: 2)
    }
}

#Preview {
    UsersCardsView(user: CardUser(id: "1", 
                                  name: "Вика",
                                  imageUrl: "not found",
                                  description: "🕺🪩🕺✨✨",
                                  age: 22))
}
