//
//  InboxMessageView.swift
//  DatingApp
//
//  Created by Dobrovsky on 12.08.2024.
//


import SwiftUI

struct InboxMessagesView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
        Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(Color(.systemGray4))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Name User")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Test message, test message, test message, test message, test message, test message.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: screen.width * 0.5, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
    }
}

#Preview {
    InboxMessagesView()
}





//import Foundation
//
//class InboxMessagesView: ObservableObject {
//    
//    @Published var inbox: AboutUser
//    
//    init(inbox: AboutUser) {
//        self.inbox = inbox
//    }
//}


