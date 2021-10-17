//
//  DetailView.swift
//  ProKiosk
//
//  Created by Jagrit Kamra on 10/10/2021.
//

import Foundation

import SwiftUI

struct  DetailView: View {
    @State var count:Int = 0
    @State var headers:[String] = ["Check your Attendance in \n just two clicks.","Wanna Intern?","Get all the details \n you want."]
    @State var details:[String] = ["With our app, your life gets easier.\nWe value your time.","From Data Science to App Development\n to Game Development, Find latest \n Internships in the field you want.","From Professors to Subjects to Marks \n to Latest Skills, We got it all."]
    
    
    var body: some View {
        VStack{
            
        Image("grad").resizable()
            .aspectRatio(contentMode: .fit)
            .offset(y:-50)
            
            Text(headers[count])
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .offset(y:-25)
            
            Spacer()
            
            
            Text(details[count])
                .foregroundColor(Color(red: 0.5529411764705883, green: 0.5529411764705883, blue: 0.5529411764705883))
                .multilineTextAlignment(.center)
            Spacer()
            
            Button {
                count = (count+1)%3
            } label: {
                Image(systemName:"arrow.right")
                    .foregroundColor(Color.white)
                    .padding(20)
            }.padding(.horizontal, 30.0).background(Color(red: 0.1568627450980392, green: 0.24313725490196078, blue: 1.0)).cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
            
            
            
        }
        .padding(.bottom, 60.0)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .preferredColorScheme(.light)
    }
}
