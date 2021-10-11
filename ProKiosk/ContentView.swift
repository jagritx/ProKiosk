//
//  ContentView.swift
//  ProKiosk
//
//  Created by Jagrit Kamra on 10/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State var loggedIn:Bool = false
    var body: some View {
        Group {
            if loggedIn {
                LoginView()
            } else {
                MainView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
