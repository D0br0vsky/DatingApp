//
//  ChatView.swift
//  DatingApp
//
//  Created by Dobrovsky on 12.08.2024.
//

import SwiftUI


struct ChatMessage: Hashable {
    var message: String
    var photo: String // imageUrl
    var color: Color
}



struct ChatViewModel: View {
    var messages = [
        ChatMessage(message: "Hi, Sveta", photo: "🥹", color: .blue),
        ChatMessage(message: "Hi, Mark", photo: "😂", color: .pink)
    ]

    var body: some View {
        
        List {
            ForEach(messages, id: \.self) { msge in
                Group {
                    Text(msge.photo)
                    Text(msge.message)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(10)
                        .background(msge.color)
                        .cornerRadius(10)
                }
            }
        }
    }
}


/// Add a design to the list of messages




#Preview {
    ChatViewModel()
}
