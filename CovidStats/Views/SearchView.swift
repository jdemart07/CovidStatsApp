//
//  SearchView.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 6/2/21.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack{
            TextField("Country...", text: $searchText)
            .padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}
