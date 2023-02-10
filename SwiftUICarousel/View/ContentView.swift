//
//  ContentView.swift
//  SwiftUICarousel
//
//  Created by Marble Interactive SL on 10/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isCarTapped = false
    @State private var currentTripIndex = 2
    
    var body: some View {
        GeometryReader { outerView in
            HStack(alignment: .center, spacing: 0) {
                ForEach(sampleTrips.indices, id: \.self) { index in
                    GeometryReader { innerView in
                        TripCardView(destination: sampleTrips[index].destination, imageName: sampleTrips[index].image, isShowDetails: $isCarTapped)
                    }
                    .padding(.horizontal, isCarTapped ? 0 : 20)
                    .frame(width: outerView.size.width, height: 500)
                }
            }
            .frame(width: outerView.size.width, height: outerView.size.height, alignment: .leading)
            .offset(x: -CGFloat(currentTripIndex) * outerView.size.width)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
