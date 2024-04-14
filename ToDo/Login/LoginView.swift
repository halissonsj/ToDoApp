//
//  LoginView.swift
//  ToDo
//
//  Created by Halisson da Silva Jesus on 14/04/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                // header
                HeaderView()
                
                // form
                Form {
                    TextField("Email Address", text: $email)
                    SecureField("Password", text: $password)
                    
                    Button {
                        // login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.purple)
                            
                            Text("Login")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                }
                
                // Footer
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create Account") {
                        SignUpView()
                    }
                }
                .padding(.bottom, 30)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.purple)
                .rotationEffect(.degrees(15))
            
            VStack {
                Text("To Do")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text("To Do 2")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}
