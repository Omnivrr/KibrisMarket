//
//  ContentView.swift
//  Kibristor
//
//  Created by Bukhari Sani on 20/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State var signupPage = false
    @State var signinPage = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Spacer()
                    .frame(height: 10)
                Image("Screen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 300)
                Text("We deliver\n your grocery\n to your doorstep\n in minutes..")
                    .font(.system (size: 30, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                    Spacer()
                
                Button() {
                    signinPage = true
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Started ")
                            .foregroundColor(.white)
                            .bold()
                    }
                Spacer()
                }.frame(width: 300, height: 65)
                    .foregroundColor(.purple)
                    .shadow(color: Color.black.opacity(0.17), radius: 60, x:0.0, y:17)
                    .padding(.horizontal, 0.10)
                Spacer()
                Spacer()
                
              
            }
            .navigationDestination(isPresented: $signinPage ) {
                Kibristor.signinPage()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
