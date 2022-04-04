//
//  ContentView.swift
//  Shared
//
//  Created by Noslin on 25/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack {
            //Plan Basic
                PricingView (title: "Basic", price:"9$", textColor: .white, bgColor:.purple,icon: "wand.and.rays" )
                .padding()
                .offset(x: 0 , y: 180)
            //Plan pro
            PricingView(title: "Pro", price: "19$", textColor: .black, bgColor:.yellow,icon: "wand.and.rays")
                .padding()
                .scaleEffect(0.95)
            //Team
                PricingView (title: "Team", price:"299$", textColor: .white, bgColor:.black,icon: "wand.and.rays")
                .padding()
                .scaleEffect(0.9)
                .offset(x: 0 , y: -180)
           
         
            }
           
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct PricingView: View {
    
    var title : String
    var price: String
    var textColor: Color
    var bgColor: Color //gb -> background
    var icon: String?
    
    var body: some View {
        VStack{
            if let icon = icon {
                Image(systemName: icon )
            }
           
            Text(title)
               .font(.system(.title))
            Text (price)
                .font(.system(size: 40, weight: .heavy,design: .rounded))
            Text ("per month")
                .font(.system(.headline))
           
        }
        .foregroundColor(textColor)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}


