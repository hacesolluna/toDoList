

import SwiftUI

public class ProgressBarNum : ObservableObject {
    @Published var hours: CGFloat
    
   init(hours: CGFloat){
        self.hours = 10
    }
}


struct SliderView: View {
    @State var hours: CGFloat = 0
    @State var goalHours: CGFloat = 5
    @State var goalHoursText = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Text("REFLECT AND RATE")
                .font(.headline)
                .fontWeight(.bold)
            TextField("Enter the goal in hours", text: $goalHours)
            var goalAction = 
            Text("Goal: \(Int(goalHours)) hours of volunteering")
                
            
            Button("Add an hour!") {
                goalHours += 1.0
            }
            
            .padding(.bottom)

            Text("Tracker:")
            
            HStack{
                Button("-") {
                    hours -= 1.0
                }
                Text("\(Int(hours)) hrs")
                Button("+") {
                    hours += 1.0
                }
            }
            
            var width: CGFloat = 200
            var height: CGFloat = 20
           // @State public var hours: CGFloat = 0
            @ObservedObject var barNum = ProgressBarNum(hours: 0)
            var color1 = Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
            var color2 = Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))

                
                let multiplier = width / goalHours

                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: width, height: height)
                        .foregroundColor(Color.black.opacity(0.1))
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: hours * multiplier, height: height)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [color1, color2]),startPoint: .leading, endPoint: .trailing)
                                .clipShape(RoundedRectangle(cornerRadius: height,style: .continuous))
                            
                        )
                        .foregroundColor(.clear)
                }
            }

        }
        
    
}

struct ParentView: View {
    
    @StateObject var barNum = ProgressBarNum(hours: 50)
    
    var body: some View {
        ContentView()

    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
