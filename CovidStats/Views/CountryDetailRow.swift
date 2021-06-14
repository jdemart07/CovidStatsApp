//
//  CountryDetailRow.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 6/2/21.
//

import SwiftUI

struct CountryDetailRow: View {
    
    var number: String = "Error"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Text(self.name)
                    .font(.body)
                    .padding(5)
                
                Spacer()
                
                Text(self.name)
                .font(.subheadline)
                .padding(5)
                    .foregroundColor(color)

            }
            Divider()
            
        }
        .padding(.leading)
        .padding(.trailing)
   }
}

struct CountryDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailRow()
    }
}
