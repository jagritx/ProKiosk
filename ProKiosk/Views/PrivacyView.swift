//
//  PrivacyView.swift
//  ProKiosk
//
//  Created by Jagrit Kamra on 10/10/2021.
//


import Foundation

import SwiftUI

struct  PrivacyView: View {
    var body: some View {
        
           
            
        VStack{
            
            HStack{
        Text("Priva**y")
                    .font(.system(size: 50))
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .bottom], 30.0)
                    
                    Spacer()
            }
            ZStack{
                
            RoundedRectangle(cornerRadius: 15)
                    .fill(Color("AccentColor"))
                    .frame(width:320, height: 100)
                
                
                Text("This feature is currently \nunder development.")
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
            }
            Spacer()
            Text("See when someone enters/exits\n your dorm room and alert the\n authorities to prevent\n unauthorized access.")
                .font(.title2)
                .multilineTextAlignment(.center)
            Spacer()
            Text("Preview")
                .font(.title)
                .fontWeight(.semibold)
            Spacer()
            Text("Activities at your room\n took place at:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("AccentColor"))
                .multilineTextAlignment(.center)
            Spacer()
            VStack{
                Text("07:00 AM - ENTRY")
                Text("08:30 AM - ENTRY")
                Text("01:00 PM - EXIT")
            }
            .padding(.bottom, 50.0)
           
        
        }
        .padding(.top, 10.0)
        
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
            .preferredColorScheme(.light)
    }
}
