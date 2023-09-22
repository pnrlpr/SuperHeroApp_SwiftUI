//
//  SuperHero.swift
//  SuperHeroApp_SwiftUI
//
//  Created by PINAR KALKAN on 22.09.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero : Identifiable {
    
    var id = UUID()
    var name : String
    var realName : String
    var imageName : String
    var city : String
    var job : String
    var coordinate : Coordinate
    
    var coordinateLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}


struct Coordinate {
    var latitude : Double
    var longitude : Double
}


let batman = SuperHero(name: "Batman", realName: "Bruce Wayne", imageName: "batman", city: "Gotham", job: "Business Man", coordinate: Coordinate(latitude: 41.8713609, longitude: -87.7669902))

let superman = SuperHero(name: "Superman", realName: "Clark kent", imageName: "superman", city: "Kansas", job: "Journalist", coordinate: Coordinate(latitude: 36.0865207, longitude: -94.7089592))

let spiderman = SuperHero(name: "Spiderman", realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Photographer", coordinate: Coordinate(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperHero(name: "Iron Man", realName: "Tony Stark", imageName: "ironman", city: "Los Angeles", job: "Business Man", coordinate: Coordinate(latitude: 33.8003309, longitude: -118.2261494))

let superHeroArray = [batman, superman, spiderman, ironman]
