//
//  TotalDataView.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 5/31/21.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    
    
    var body: some View {
        
        VStack{
            
            HStack{
                TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed")
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical", color: .yellow)
                TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .red)
                
            }
            
            HStack{
                TotalDataCard(number: String(format: "%.2f", totalData.fatalityRate), name: "Death %", color: .red)
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Recovered", color: .green)
                TotalDataCard(number: String(format: "%.2f", totalData.recoveredRate), name: "Recovery%", color: .green)
                
            }
        }//enf of vstack
        .frame(height: 170)
        .padding(10)
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
