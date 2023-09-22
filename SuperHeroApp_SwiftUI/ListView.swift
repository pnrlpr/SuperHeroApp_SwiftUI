//
//  ContentView.swift
//  SuperHeroApp_SwiftUI
//
//  Created by PINAR KALKAN on 22.09.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationView {
            
            List(superHeroArray) { superHero in
                NavigationLink(destination: DetailsView(choosenHero: superHero),
                label: {
                   ListRowView(superHero: superHero)
                })
            }.navigationTitle(Text("Super Hero App"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
