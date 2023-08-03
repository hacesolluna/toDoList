//
//  Resources.swift
//  toDoList
//
//  Created by Sunny Moon on 8/3/23.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        ZStack{
            Color(red: 248/255, green: 189/255, blue: 196/255)
            .ignoresSafeArea()
            VStack(spacing: 10.0) {
                Text("Resources")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                Spacer()
                ScrollView {
                    HStack{
                        Link("Insight Timer is a free mindfulness and meditation app helping the users with sleep, anxiety, and stress. ",
                              destination: URL(string: "https://insighttimer.com/")!)
                        .padding(.vertical, 10)
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                        .fontDesign(.rounded)
                        Image("insighttimer")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 15)
                    
                    HStack{
                        Link("Enjoy 10 minutes of meditation with this video! ",
                              destination: URL(string: "https://www.youtube.com/watch?v=O-6f5wQXSu8")!)
                        .padding(.vertical, 10)
                        .padding(.leading, 20)
                                .foregroundColor(.black)
                                .fontDesign(.rounded)
                        Image("resource2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 15)
                    
                    HStack{
                        Link("Take a short break with 15 minutes of yoga <3",
                              destination: URL(string: "https://www.youtube.com/watch?v=HI-hKN-dVLY")!)
                        .padding(.vertical, 10)
                        .padding(.leading, 20)
                                .foregroundColor(.black)
                                .fontDesign(.rounded)
                        Image("resource3")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 15)
                    
                    HStack{
                        Link("KidSpirit is a website about writing to overcome fear and anxiety",
                              destination: URL(string: "https://kidspiritonline.com/magazine/fear-and-anxiety/")!)
                        .padding(.vertical, 20)
                        .padding(.leading, 20)
                                .foregroundColor(.black)
                                .fontDesign(.rounded)
                        Image("resource4")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 15)
                    
                    HStack{
                        Link("Thinking of working out? Here's a great article to help you get started",
                              destination: URL(string: "https://adaa.org/living-with-anxiety/managing-anxiety/exercise-stress-and-anxiety")!)
                        .padding(.vertical, 10)
                        .padding(.leading, 20)
                                .foregroundColor(.black)
                                .fontDesign(.rounded)
                        Image("resource5")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 15)
                    
                    
                    HStack{
                        Link("Start your own journal today with Penzu! Writing is known to help with anxiety.",
                              destination: URL(string: "https://penzu.com")!)
                        .padding(.vertical, 10)
                        .padding(.leading, 20)
                                .foregroundColor(.black)
                                .fontDesign(.rounded)
                        Image("resource6")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                    }
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 15)
                    
                    HStack{
                        Link("If you are in the need of support, PLEASE don't hesitate to call hotlines (linked on this page)",
                              destination: URL(string: "https://screening.mhanational.org/content/crisis-call-someone/")!)
                        .padding(.vertical, 10)
                        .padding(.leading, 20)
                                .foregroundColor(.black)
                                .fontDesign(.rounded)
                        Image("resource7")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    .background(.white)
                    .cornerRadius(20)
                    
                }
                .cornerRadius(20)
            }
            .padding()
        }
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
