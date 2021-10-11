//
//  HomeView.swift
//  ProKiosk
//
//  Created by Jagrit Kamra on 11/10/2021.
//

import Foundation

import SwiftUI

struct  HomeView: View {
    
    
    
    var body: some View {
        ScrollView(){
        VStack{
            HStack{
        Text("Hi Jagrit!")
                    .font(.system(size: 55))
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .bottom], 30.0)
                    
                    Spacer()
            }
            
            HStack{
                
                Text("Subjects")
                    .padding(.leading, 30.0)
                    .font(.system(size: 25))
                Spacer()
            Button {} label: {
                Text("See All >")
                    .foregroundColor(Color.gray)
                    
                
            }
            .padding(.trailing, 30.0)
                
            }
            .padding(.bottom, 30.0)
            ScrollView(.horizontal){
            HStack{
                
                SubjectCard()
                SubjectCard()
                SubjectCard()
            }
            .padding(.leading, 30.0)
            }
            
            HStack{
                Text("Attendance -")
                    .padding([.top, .leading], 30.0)
                    .font(.system(size: 25))
                Spacer()
            }
            ZStack{
            RoundedRectangle(cornerRadius: 55)
                        .fill(Color.green)
                        
                        .frame(width: 330, height: 40)
            RoundedRectangle(cornerRadius: 55)
                        .stroke(Color.black,lineWidth: 4)
                        
                        .frame(width: 331, height: 41)
                        .shadow(radius: 5)
            }
            .padding()
            HStack{
                Text("Overall")
                    .padding(.horizontal, 30.0)
                    .font(.system(size: 25))
                Spacer()
                Button {} label: {
                    Text("See All >")
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 30.0)
                }
            }
            .padding(.vertical, 30.0)
            
                 Cgpa()
                        
        }
        .padding(.top, 10.0)
            
            VStack{
                HStack{
                    Text("Trending Skills -")
                        .fontWeight(.bold)
                        .padding(.vertical, 10.0)
                .font(.system(size: 25))
                    Spacer()
                }
                .padding(.leading, 30.0)
                HStack{
                    Text("JavaScript")
                .font(.system(size: 50))
                    Spacer()
                }
                .padding(.leading, 30.0)
                HStack{
                    Text("Swift")
                .font(.system(size: 50))
                    Spacer()
                }
                .padding(.leading, 30.0)
                HStack{
                    Text("JINA AI")
                .font(.system(size: 50))
                    Spacer()
                }
                .padding(.leading, 30.0)
                HStack{
                    Text("ReactJS")
                .font(.system(size: 50))
                    Spacer()
                }
                .padding(.leading, 30.0)
            }
            .padding(.top, 20.0)
        }
        
    }
}

struct SubjectCard: View {
    var body: some View {
        ZStack{
    RoundedRectangle(cornerRadius: 35)
                .fill(Color("AccentColor"))
                .frame(width: 250, height: 250)
            VStack{
                Spacer().frame(height: 15)
                Text("Subject")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            Text("Modelling and Simulation").foregroundColor(Color.white)
                    Spacer().frame(height: 35)
                Text("Code").fontWeight(.bold)
                    .foregroundColor(Color.white)
            Text("18B7C2K3").foregroundColor(Color.white)
                Spacer().frame(height: 35)
            Text("Taught by").fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("Dr. Rajinder Sandhu").foregroundColor(Color.white)
                Spacer().frame(height:15)
    
            }
        }
    }
}


struct Cgpa: View {
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color.blue,lineWidth: 10)
                .frame(width: 255, height: 255)
            Circle()
                .fill(Color("AccentColor"))
                .frame(width: 250, height: 250)
            VStack{
                
                Text("Overall")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 27))
            
                Text("CGPA").fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .font(.system(size: 47))
                
            Text("9.5").fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.system(size: 55))
                
    
            }
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.light)
    }
}
