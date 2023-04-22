////
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
                            Capsule().fill(self.selected == i ? Color(.purple) :
                                            Color.clear).frame(width: 55, height: 5))
                    
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
                
                
                
                Text("\(Image(systemName: "person.circle"))\t Hello abdulQadeer").fontWeight(.semibold)

                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "gearshape")
                }.foregroundColor(.black)
            }
            
            HStack(spacing: 15)  {
                HStack {
                    Image(systemName: "magnifyingglass").font(.body)
                    TextField("Search the store", text: $text)
                }
                .padding(10)
                .background((Color.black.opacity(0.15))
                    .frame(maxWidth: .infinity)
                    .cornerRadius(20))
                
                Button(action: {
                    
                }) {
                    Image(systemName: "mic")
                        .foregroundColor(.black)
                    
                    
                }
            }.padding(.vertical, 15)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    Image("off")
                        .resizable()
                        .cornerRadius(15)
                        .overlay(
                            VStack {
                                Spacer()
                                HStack {
                                    Text("25% OFF VEGETABLES!")
                                        .font(.system (size: 25, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                }.padding()
                            }
                            
                        )
                    
                    HStack {
                        Text("Categories").fontWeight(.semibold)
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Text("View All").foregroundColor(.purple)
                        }
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(categories, id: \.self) {i in
                                VStack{
                                    Image(i)
                                        .background((Color.purple.opacity(0.20))
                                            .frame(maxWidth: .infinity)
                                            .cornerRadius(10))
                                    Text(i.capitalized)
                                }
                            }
                        }
                    }
                    
                    HomeBottomView()
                }
            }
        }.padding(.horizontal)
    }
}

struct HomeBottomView: View {
    var body: some View{
        VStack(spacing: 15){
            
            HStack {
                Text("Fresh New Items").fontWeight(.semibold)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("View All").foregroundColor(.purple)
                }
            }.padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(freshItems) { i in
                        
                        freshCellView(i: i)
                    }
                }
            }
        }
    }
}

struct freshCellView: View {
    var i: fresh
    var body: some View {
        VStack(spacing: 10){
            Image(i.image)
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .cornerRadius(10)
            Text(i.name)
            Text(i.price)
        }
        
    }
}


var tabs = ["Home", "Wishlist", "Cart"]

var categories = ["New Products", "Snacks", "Fruits", "Water","Shisha", "Vegetables", "Fish", "Canned Food", "Drinks", "Baby Products","Smoke", "Health"]


struct fresh: Identifiable {
    var id: Int
    var name: String
    var price: String
    var image: String
    
}

struct recipe: Identifiable {
    var id: Int
    var name: String
    var author: String
    var image: String
    var authopic: String
}

var freshItems = [
    fresh(id: 0, name: "Agege Bread", price: "₺70", image: "Agege"),
    fresh(id: 1, name: "Plantain", price: "₺45", image: "Plantain"),
    fresh(id: 2, name: "Catfish", price: "₺85", image: "Catfish"),
    fresh(id: 3, name: "Chicken", price: "₺70", image: "Chicken"),
    fresh(id: 4, name: "Seafood", price: "₺140", image: "Seafood")


]
