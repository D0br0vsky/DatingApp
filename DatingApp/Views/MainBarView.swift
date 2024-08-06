//
//  MainBarView.swift
//  DatingApp
//
//  Created by Dobrovsky on 05.08.2024.
//

import SwiftUI

struct MainBarView: View {
    var body: some View {
        
        TabView{
            LoveScrollView()
                .tabItem {
                    VStack{
                        Image(systemName: "heart.circle.fill")
                        Text("People")
                    }
                }
            
            
            MessagesView()
                .tabItem {
                    VStack{
                        Image(systemName: "message")
                        Text("Messages")
                    }
                }
            
            ProfileView()
                .tabItem {
                    VStack{
                        Image(systemName: "person.crop.square")
                        Text("Profile")
                    }
                }
        }
    }
}

#Preview {
    MainBarView()
}
