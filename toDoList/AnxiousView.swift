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
      VStack{
        Text("Your body needs some serotonin!")
          .font(.largeTitle)
          .fontWeight(.bold)
          .fontDesign(.rounded)
        Text("Consider taking a short and sweet stroll \noutside 🚶👩‍🦽🌿🌳")
          .font(.title)
          .multilineTextAlignment(.center)
          .fontDesign(.rounded)
          .padding()
        Text("According to the Houston Chronicle, physical activity results in the release of endorphins, also known as happy hormones, which reduce pain and inflammation.")
          .multilineTextAlignment(.leading)
          .font(.system(size: 20))
          .fontDesign(.rounded)
          .padding()
        Text("💕")
          .multilineTextAlignment(.center)
          .fontDesign(.rounded)
          .font(.system(size: 120))      }
    }
  }
}
struct AnxiousView_Previews: PreviewProvider {
  static var previews: some View {
    AnxiousView()
  }
}
