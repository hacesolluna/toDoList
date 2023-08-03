import SwiftUI
struct FirstView: View {
  var body: some View {
    ZStack {
      Color(red: 248/255, green: 189/255, blue: 196/255)
        .edgesIgnoringSafeArea(.all)
      Rectangle()
        .foregroundColor(Color(hue: 0.404, saturation: 0.047, brightness: 0.944))
        .frame(width: 380, height: 400.0) // Adjust the size as needed
        .cornerRadius(25)
      VStack(alignment: .center, spacing: 0.01) {
        HStack{
          Text("Bloom Balance")
            .font(.system(size: 40))
            .fontDesign(.rounded)
            .fontWeight(.black)
            .foregroundColor(Color(red: 0.252, green: 0.404, blue: 0.354))
            .multilineTextAlignment(.leading)
            .padding(.leading, 20.0)
            .padding(.trailing, 50.0)
            .padding(.bottom, 250.0)
            .shadow(color: .white, radius: 1.5, x: 1, y: 1)
          Image("bloombalance")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .frame(width: 100.0, height: 100.0)
            .padding(.bottom, 270.0)
            .padding(.top, 30.0)
        }
        Spacer()
        .padding()
      }
    }
  }
}
struct FirstView_Previews: PreviewProvider {
  static var previews: some View {
    FirstView()
  }
}
