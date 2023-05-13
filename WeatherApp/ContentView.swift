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
        LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          Text("Philippines, IN")
            .font(.system(size:32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
          
        VStack {
          //Find this in your SF Symbols, use cmd + shift + c to copy
          Image(systemName: "cloud.sun.rain.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
            
          Text("28°") //option + shif + 8 to add degrees°
            .font(.system(size: 70,weight: .medium))
            .foregroundColor(.white)
          }
          
          Spacer()
          
          HStack(spacing:24) {
            WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max", temperature: 25)
            WeatherDayView(dayOfWeek: "WED", imageName: "moon.stars", temperature: 19)
            WeatherDayView(dayOfWeek: "THU", imageName: "cloud.drizzle", temperature: 10)
            WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.bolt", temperature: 22)
            WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.moon", temperature: 16)
          }
          
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

//Re-usable view
struct WeatherDayView: View {
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack {
      Text(dayOfWeek)
        .font(.system(size: 16, weight: .medium))
        .foregroundColor(.white)
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 40, height: 40)
        .foregroundColor(.white) // change the color of the image
      Text("\(temperature)°")
        .font(.system(size: 28, weight: .medium))
        .foregroundColor(.white)
    }
  }
}
