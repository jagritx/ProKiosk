//
//  LoginView.swift
//  ProKiosk
//
//  Created by Jagrit Kamra on 10/10/2021.
//

import Foundation

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUsername = "Jagrit"
let storedpassword = "Kamrax"


struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack {
                HelloText()
                ZStack{
                    VStack{
                        UsernameTextField(username: $username)
                            .padding(.horizontal)
                        PasswordSecureField(password: $password)
                            .padding(.horizontal)
                    }.zIndex(1)
                    HStack{
                        Spacer()
                    Image("boy")
                            .resizable().frame(width: 380.0, height: 380.0).offset(x:160,y:-160)
                    }
                }
                
                if authenticationDidFail {
                    Text("Please enter the correct info.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                Spacer()
                
                Button(action: {
                    if self.username == storedUsername && self.password == storedpassword {
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                        
                    } else {
                        self.authenticationDidFail = true
                        self.authenticationDidSucceed = false
                    }
                }) {
                    LoginButtonContent()
                    
                    
                }
                Spacer()
                Button(action: {}) {
                    BackButtonContent()
                    
                    
                }
                Spacer()
            }
                
            .padding()
            if authenticationDidSucceed {
                Text("Login succeeded!")
                    .font(.headline)
                    .frame(width: 250, height: 80)
                    .background(Color.yellow)
                    .cornerRadius(20.0)
                    .animation(Animation.default)
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct HelloText: View {
    var body: some View {
        VStack
 {
            
    HStack{
        Text("Welcome!")
            .font(.system(size: 55))
            .fontWeight(.semibold)
            .padding(0.0)
            Spacer()
    
            }
    HStack{
        Text("Enter your details to get started.")
                .font(.headline)
                .fontWeight(.thin)

                Spacer()
        }
            
    }
        .padding()
        

    Spacer()
    }
}



struct LoginButtonContent: View {
    var body: some View {
        Text("Let's Go!")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 350, height: 60)
            .background(Color("AccentColor"))
            .cornerRadius(10.0)
    }
}

struct BackButtonContent: View {
    var body: some View {
        Text("I'm not from this University")
            .font(.headline)
            .foregroundColor(Color("AccentColor"))
            .padding()
          
    }
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username:", text: $username)
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(5.0)
            .padding(.bottom, 30)
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password:", text: $password)
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(5.0)
            .padding(.bottom, 30)
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            
    }
}
