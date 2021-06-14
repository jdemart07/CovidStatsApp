//
//  MapContainerVIew.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 6/5/21.
//

import SwiftUI

struct MapContainerVIew: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {

        MapView(countryData: $covidFetch.allCountries)
        
    }
}

struct MapContainerVIew_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerVIew()
    }
}
