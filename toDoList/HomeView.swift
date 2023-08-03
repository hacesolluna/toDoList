import SwiftUI
struct HomeView: View {
  var body: some View {
    ZStack{
        TabView {
          FirstView().tabItem {
            Image(systemName: "homekit")
              .foregroundStyle(Color(red: 0.252, green: 0.404, blue: 0.354),Color(red: 0.252, green: 0.404, blue: 0.354))
            Text("Home")
          }
          // Replace SecondView() with an appropriate view
          ContentView().tabItem {
            Image(systemName: "square.and.pencil")
              .foregroundStyle(Color(red: 0.252, green: 0.404, blue: 0.354), Color(red: 0.252, green: 0.404, blue: 0.354))
            Text("Tasks")
          }
          EmotionView().tabItem {
            Image(systemName: "smiley")
              .foregroundStyle(Color(red: 0.252, green: 0.404, blue: 0.354), .black)
            Text("Mood")
          }
          Resources().tabItem {
            Image(systemName: "person.3.fill")
              .symbolRenderingMode(.palette)
              .foregroundStyle(
                .linearGradient(colors: [Color(red: 0.252, green: 0.404, blue: 0.354), .black], startPoint: .top, endPoint: .bottomTrailing),
                .linearGradient(colors: [Color(red: 0.252, green: 0.404, blue: 0.354), .black], startPoint: .top, endPoint: .bottomTrailing),
                .linearGradient(colors: [Color(red: 0.252, green: 0.404, blue: 0.354), .black], startPoint: .top, endPoint: .bottomTrailing))
            Text("Resources")
          }
        }
    }
  }
}
struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
