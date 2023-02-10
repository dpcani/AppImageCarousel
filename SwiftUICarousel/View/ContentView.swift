//
//  ContentView.swift
//  SwiftUICarousel
//
//  Created by Marble Interactive SL on 10/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isCarTapped = false
    
    var body: some View {
        GeometryReader { outerview in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center) {
                    ForEach(sampleTrips.indices, id: \.self) { index in
                        GeometryReader { innerView in
                            TripCardView(destination: sampleTrips[index].destination, imageName: sampleTrips[index].image, isShowDetails: $isCarTapped)
                            
                        }
                        .padding(.horizontal, 20)
                        .frame(width: outerview.size.width, height: 450)
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
