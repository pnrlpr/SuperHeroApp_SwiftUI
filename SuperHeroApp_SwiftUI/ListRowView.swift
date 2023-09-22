//
//  ListRowView.swift
//  SuperHeroApp_SwiftUI
//
//  Created by PINAR KALKAN on 22.09.2023.
//

import SwiftUI

struct ListRowView: View {
    
    var superHero : SuperHero
    var body: some View {
        HStack {
            Image(superHero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 80, alignment: .leading)
                .clipShape(Circle())
          Spacer()
            VStack {
                Text (superHero.name)
                    .bold()
                    .font(.title)
               
                Text (superHero.realName)
            }
            Spacer()
           
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(superHero: batman)
    }
}
