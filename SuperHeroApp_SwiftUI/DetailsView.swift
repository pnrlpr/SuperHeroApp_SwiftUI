//
//  DetailsView.swift
//  SuperHeroApp_SwiftUI
//
//  Created by PINAR KALKAN on 22.09.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var choosenHero : SuperHero
    var body: some View {
       
            VStack {
                MapView(coordinate: choosenHero.coordinateLocation)
                    .frame(height: UIScreen.main.bounds.height * 0.3)
                //haritanın en yukarıya taşması için
                    .edgesIgnoringSafeArea(.all)
                
                RoundedImageView(image: Image(choosenHero.imageName))
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                //Görünümün ekrandaki konumunu ayarlamak için offset kullanılır. x konumunu değiştirmek istemediğimiz için yazmadık.
                    .offset(y: UIScreen.main.bounds.height * -0.33)
                    .padding(.bottom, -50)
                //Görselin sınırları geniş olduğu için alttaki VStack için sorun çıkarsa (farklı ekran boyutları için) padding'e eksi değer verebilirsin.
                
                VStack {
                    HStack {
                        Text(choosenHero.name)
                            .font(.largeTitle)
                            .foregroundColor(.red)
                        
                        //Ortalarında boşluk bırakır.
                        Spacer()
                        
                        Text(choosenHero.realName)
                            .font(.title)
                            .foregroundColor(.orange)
                    }
                    
                    HStack {
                        Text(choosenHero.city)
                            .bold()
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text(choosenHero.job)
                            .bold()
                            .foregroundColor(.gray)
                    }
                    
                }.padding()
                    .offset(y: UIScreen.main.bounds.height * -0.27)
                Spacer()
            }
        

    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenHero: spiderman)
    }
}
