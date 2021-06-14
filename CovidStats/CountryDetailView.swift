//
//  CountryDetailView.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 6/2/21.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        VStack{
            VStack{
                CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed")
                    .padding(.top)
                CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
                CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Death", color: .red)
                CountryDetailRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Fatality rate", color: .red)
                CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Recovered", color: .green)

                CountryDetailRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovered rate", color: .green)
            }
        .background(Color("cardBackgroundGray"))
        .cornerRadius(8)
        .padding()
            
        Spacer()
        }
        
        .padding(.top, 50)
        .navigationBarTitle(countryData.country)
    }
}

/*
struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView()
    }
}
*/
