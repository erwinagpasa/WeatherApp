//
//  ContentView.swift
//  WeatherApp
//
//  Created by Erwin Agpasa on 13/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .trailing)
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          Text("Philippines, IN")
            .font(.system(size:32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
          Spacer() //This make the test moved to Top
        }
        
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
