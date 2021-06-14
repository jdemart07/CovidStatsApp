//
//  TotalDataCard.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 5/31/21.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Error"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        GeometryReader{  geometry in
            
            VStack{
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
                Text(self.name)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
            }//end of vstack
            .frame(width: geometry.size.width, height: 80, alignment: .center)
            
            .background(Color("CardBackgroundGray"))
            .cornerRadius(8.0)
            
        }//end of geo
        
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
