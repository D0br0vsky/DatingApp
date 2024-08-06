//
//  UsersAuthorizationView.swift
//  DatingApp
//
//  Created by Dobrovsky on 03.08.2024.
//

import SwiftUI

struct UsersAuthorizationView: View {
    @State private var isAuth = true
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @State private var isMainBarView = false
    
    var body: some View {
        VStack(spacing: 300){
            Text(isAuth ? "Authorization" : "Registration")
                .padding()
                .padding(.horizontal, 80)
                .font(.title2.bold())
                .foregroundColor(isAuth ? .white : .yellow)
                .background(Color("MilkColor"))
                .cornerRadius(20)
            
            VStack {
                TextField("mail", text: $email)
                    .padding()
                    .background(Color("MilkColor"))
                    .cornerRadius(20)
                    .padding(.horizontal, 30)
                
                SecureField("password", text: $password)
                    .padding()
                    .background(Color("MilkColor"))
                    .cornerRadius(20)
                    .padding(.horizontal, 30)
                
                if !isAuth {
                    SecureField("repeat password", text: $confirmPassword)
                        .padding()
                        .background(Color("MilkColor"))
                        .cornerRadius(20)
                        .padding(.horizontal, 30)
                }
                
                Button {
                    if isAuth {
                        print("Enter users from FireBase")
                        isMainBarView.toggle()
                    } else {
                        print("Create")
                        self.email = ""
                        self.password = ""
                        self.confirmPassword = ""
                        self.isAuth.toggle()
                    }
                } label: {
                    Text(isAuth ? "Enter" : "Create")
                        .foregroundColor(isAuth ? .green : .yellow)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal, 130)
                        .background(Color("MilkColor"))
                        .cornerRadius(20)
                }
                
                Button {
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Registration" : "Authorization")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal, 100)
                        //.background(Color("MilkColor"))
                        .cornerRadius(20)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BaseColor").ignoresSafeArea())
        .animation(Animation.easeInOut(duration: 0.5), value: isAuth)
        .fullScreenCover(isPresented: $isMainBarView, content: {
            MainBarView()
        })
    }
}



#Preview {
    UsersAuthorizationView()
}

