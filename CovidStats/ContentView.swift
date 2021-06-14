//
//  ContentView.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        TabView{
            RecentView()
                .tabItem{
                    Tab(imageName: "chart.bar", text: "Recent")
                    
                }
                .tag(0)
            
            MapContainerVIew()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem{
                    Tab(imageName: "map", text: "Map")
                    
                }
                .tag(1)
            
            //map
        }
    }
}
 
private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View{
        VStack{
             Image(systemName: imageName)
             Text(text)
        }
        
    }
}
