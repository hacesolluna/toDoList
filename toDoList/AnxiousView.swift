//
// AnxiousView.swift
// bloomBlossom
//
// Created by Gaura Jha on 2/8/23.
//
import SwiftUI
struct AnxiousView: View {
  var body: some View {
    ZStack{
      Color(red: 248/255, green: 189/255, blue: 196/255)
        .edgesIgnoringSafeArea(.all)
        Rectangle()
            .foregroundColor(Color(hue: 0.404, saturation: 0.047, brightness: 0.944))
            .frame(width: 350.0, height:550.0) // Adjust the size as needed
            .cornerRadius(25)
      VStack{
        Text("Your body needs some serotonin!")
          .font(.largeTitle)
          .fontDesign(.rounded)
          .fontWeight(.black)
          .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
          .shadow(color: .white, radius: 1.5, x: 1, y: 1)
        Text("Consider taking a short and sweet stroll \noutside 🚶👩‍🦽🌿🌳")
              .font(.title2)
          .multilineTextAlignment(.center)
          .fontDesign(.rounded)
          .fontWeight(.black)
          .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
          .padding()
        Text("According to the Houston Chronicle, physical activity results in the release of endorphins, also known as happy hormones, which reduce pain and inflammation.")
              .multilineTextAlignment(.center)
          .font(.body)
          .padding(.horizontal, 40.0)
          .fontDesign(.rounded)
          .fontWeight(.black)
          .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
    
        Text("💕")
          .multilineTextAlignment(.center)
          .padding(.top, 3.0)
          .fontDesign(.rounded)
          .font(.system(size: 100))      }
    }
  }
}
struct AnxiousView_Previews: PreviewProvider {
  static var previews: some View {
    AnxiousView()
  }
}
