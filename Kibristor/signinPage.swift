//
//  signinPage.swift
//  Kibristor
//
//  Created by Bukhari Sani on 20/04/2023.
//

import SwiftUI

struct signinPage: View {
    @State var shoppingStuff = false
    @State private var email: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("Sign in")
                    .font(.system (size:30 , weight: .bold, design: .rounded))
                    .padding(.vertical)
                
                Image("Screen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                
                HStack {
                    Text("\(Image(systemName: "apple.logo"))\t\t Sign in with Apple")
                        .font(.title2)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                
                HStack {
                    Text("\(Image(systemName: "envelope.fill"))\t Sign in with Email")
                        .font(.title2)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                .padding(.vertical)
                
                Text("or enter your email to sign up")
                    .foregroundColor(Color.black.opacity(0.7))
                
                TextField("\t\t Enter your email address", text: $email)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.10), radius: 60, x: 0.0, y: 18)
                
                Button() {
                    shoppingStuff = true
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Sign Up ")
                            .foregroundColor(.white)
                            .bold()
                    }
                    Spacer()
                    
                }.padding(.vertical)
                    .frame(width: 390, height: 90)
                    .foregroundColor(.purple)
                    .padding(.horizontal, 0.10)
            }
            Spacer()
            Divider()
            Spacer()
            Text("Read our Terms & Conditions")
                .foregroundColor(.purple)
            Spacer()
            
        }
        .navigationDestination(isPresented: $shoppingStuff ) {
            Kibristor.shoppingStuff()
        }
    }
}
struct signinPage_Previews: PreviewProvider {
    static var previews: some View {
        signinPage()
    }
}
