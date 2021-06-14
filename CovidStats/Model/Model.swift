//
//  Model.swift
//  CovidStats
//
//  Created by Justin DeMartinis on 4/8/21.
//

import Foundation


struct TotalData{
    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
   
   
    var fatalityRate: Double{
        
        return (100 * Double(deaths) / Double(confirmed))
    }
    
    var recoveredRate: Double{
        
        return (100 * Double(recovered) / Double(confirmed))
    }

}

struct CountryData {
    
    let country: String
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    let longitude: Double
    let latitude: Double
    
    
    
    var fatalityRate: Double{
        
        return (100 * Double(deaths) / Double(confirmed))
    }
    
    var recoveredRate: Double{
        
        return (100 * Double(recovered) / Double(confirmed))
    }
}

let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 40)
let countryData = CountryData(country: "Test", confirmed: 500, critical: 30, deaths: 43, recovered: 55, longitude:  0.0, latitude: 0.0)
