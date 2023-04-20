//
//  shoppingStuff.swift
//  Kibristor
//
//  Created by Bukhari Sani on 20/04/2023.
//

import SwiftUI

struct shoppingStuff: View {
    @Binding var selected: String
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct shoppingStuff_Previews: PreviewProvider {
    static var previews: some View {
        shoppingStuff()
    }
}
struct CustomTabView: View {
    var body: some View {
        HStack {
            ForEach (tabs, id: \.self) {
                VStack(spacing: 10) {
                    Capsule().fill(self.selected == i ? Color("color") : Color.clear).frame(height: 5)
                    
                    Button(action: {}, label: <#T##() -> _#>)
                }
            }
        }
    }
}
