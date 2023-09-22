//
//  MapView.swift
//  SuperHeroApp_SwiftUI
//
//  Created by PINAR KALKAN on 22.09.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    //Şuanda SwiftUI'da map diye bir kullanım var fakat IOS 13 ve altında da çalışsın istiyorsak UI View Representable kullanmalısın. Bunun için de struct MapView: View olmalı
    //MAP'i kullanmak daha kolay ama olurda bir yerde karşılaşırsak diye UIViewRepresentable şeklinde yaptık.
    
    //Bu kısım IOS 14 ve üzeri için olan MAP kullanımı. ->
    
    //@State var region = MKCoordinateRegion(center: superHeroArray[0].coordinateLocation, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    //var body: some View {
        //Map(coordinateRegion: $region)
    }


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superHeroArray[0].coordinateLocation)
    }
}
