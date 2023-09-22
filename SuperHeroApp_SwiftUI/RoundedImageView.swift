//
//  RoundedImageView.swift
//  SuperHeroApp_SwiftUI
//
//  Created by PINAR KALKAN on 22.09.2023.
//

import SwiftUI

struct RoundedImageView: View {
    var image : Image
    var body: some View {
       image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 20)
        
        
    }
}

struct RoundedImageView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageView(image: Image("batman"))
    }
}
