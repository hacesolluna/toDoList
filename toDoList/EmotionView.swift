
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
                .font(.system(size: 40))
                .fontDesign(.rounded)
                .fontWeight(.black)
                .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
                .multilineTextAlignment(.center)
                .shadow(color: .white, radius: 1.5, x: 1, y: 1)
          Text("💖")
            .multilineTextAlignment(.center)
            .fontDesign(.rounded)
            .font(.system(size: 50))
          Text(" ")
          NavigationLink(destination: AnxiousView()) {
            Text("Anxious")
              .font(.title)
              .fontDesign(.rounded)
              .fontWeight(.black)
              .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
          }
          .frame(width: 150.0, height: 50.0)
          .border(Color(red: 0.252, green: 0.404, blue: 0.354), width: 6)
          .cornerRadius(10)
         
          Text(" ")
          Text("Happy")
            .font(.title)
            .fontDesign(.rounded)
            .fontWeight(.black)
            .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
            .frame(width: 150.0, height: 50.0)
            .border(Color(red: 0.252, green: 0.404, blue: 0.354), width: 6)
            .cornerRadius(10)

          Text(" ")
          Text("Tired")
            .font(.title)
            .fontDesign(.rounded)
            .fontWeight(.black)
            .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
            .frame(width: 150.0, height: 50.0)
            .border(Color(red: 0.252, green: 0.404, blue: 0.354), width: 6)
            .cornerRadius(10)
          Text(" ")
          Text("Sad")
            .font(.title)
            .fontDesign(.rounded)
            .fontWeight(.black)
            .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
            .frame(width: 150.0, height: 50.0)
            .border(Color(red: 0.252, green: 0.404, blue: 0.354), width: 6)
            .cornerRadius(10)
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
