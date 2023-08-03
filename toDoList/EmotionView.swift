
//
// ContentView.swift
// bloomBlossom
//
// Created by Gaura Jha on 2/8/23.
//
import SwiftUI
struct EmotionView: View {
  var body: some View {
    NavigationStack{
      ZStack{
        Color(red: 248/255, green: 189/255, blue: 196/255)
          .edgesIgnoringSafeArea(.all)
        VStack {
          Text("How are you feeling today?")
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .font(.system(size: 60))
            .padding()
          Text("💖")
            .multilineTextAlignment(.center)
            .fontDesign(.rounded)
            .font(.system(size: 120))
          Text(" ")
          NavigationLink(destination: AnxiousView()) {
            Text("Anxious")
              .font(.title)
          }
          Text(" ")
          Text("Happy")
            .font(.title)
            .foregroundColor(Color.blue)
          Text(" ")
          Text("Tired")
            .font(.title)
            .foregroundColor(Color.blue)
          Text(" ")
          Text("Sad")
            .font(.title)
            .foregroundColor(Color.blue)
        }.padding()
      }
    }
  }
}
struct EmotionView_Previews: PreviewProvider {
  static var previews: some View {
    EmotionView()
  }
}
