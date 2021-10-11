//
//  MainView.swift
//  ProKiosk
//
//  Created by Jagrit Kamra on 10/10/2021.
//

import Foundation
//
//  ProKiosk
//
//  Created by Jagrit Kamra on 10/10/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            HomeView()
            .tabItem{
                Image(systemName:"house")
                Text("Home")
                
            }
            
            
            DetailView()
                .tabItem{
                    Image(systemName:"briefcase")
                    Text("Intern")}
            
            
            PrivacyView()
                .tabItem{
                    Image(systemName:"person.crop.circle.badge.questionmark")
                    Text("Privacy")}
            
            
            LoginView()
                .tabItem{
                    Image(systemName:"text.redaction")
                    Text("Feedback")}
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
