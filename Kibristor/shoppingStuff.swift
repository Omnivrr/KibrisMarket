//
//  shoppingStuff.swift
//  Kibristor
//
//  Created by Bukhari Sani on 20/04/2023.
//

import SwiftUI

struct shoppingStuff: View {
    @State var selected = "Home"
    var body: some View {
        VStack {
            if self.selected == "Home" {
                Home()
                
            }
            else if self.selected == "Wishlist" {
                GeometryReader{ _ in
                    Text("Wishlist")
                }
            }
            else {
                GeometryReader{ _ in
                    Text("Cart")
                    
                }
            }
                
                CustomTabView(selected: $selected)
            }
        }
    }
    
    struct shoppingStuff_Previews: PreviewProvider {
        static var previews: some View {
            shoppingStuff()
        }
    }
    
    struct CustomTabView: View {
        @Binding var selected: String
        var body: some View {
            HStack {
                ForEach (tabs, id: \.self) { i in
                    VStack(spacing: 10) {
                        
                        Capsule()
                            .fill(Color.clear)
                            .frame(height: 5)
                            .overlay(
                                Capsule().fill(self.selected == i ? Color("color") :
                                                Color.purple).frame(width: 55, height: 5))
                        
                        Button(action: {
                            self.selected = i
                        }) {
                            VStack {
                                Image(i).renderingMode(.original)
                                Text(i).foregroundColor(.black)
                            }
                        }
                    }
                }
            }.padding(.horizontal)
        }
    }
    
struct Home: View {
    @State var text = ""
    var body: some View {
        
        VStack(spacing: 15) {
            HStack(spacing: 12) {
                
                
                
                Text("\(Image(systemName: "person.circle"))\t Hello abdulQadeer")
                Spacer()
            }
        }
        
        HStack {
            Image(systemName: "magnifyingglass").font(.body)
            TextField("Search the store", text: $text)
        }
        .padding(10)
            .background((Color.black.opacity(0.15))
                .frame(maxWidth: .infinity)
            .cornerRadius(20))
    }
}
    
    var tabs = ["Home", "Wishlist", "Cart"]
