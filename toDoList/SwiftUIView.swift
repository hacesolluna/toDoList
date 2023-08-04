import SwiftUI

public class ProgressBarNum : ObservableObject {
    @Published var hours: CGFloat
    
   init(hours: CGFloat){
        self.hours = 10
    }
}


struct SwiftUIView: View {
    @State var hours: CGFloat = 0
    @State var goalHours: CGFloat = 5
    @State var goalHoursText = ""
    @State private var showingAlert = false
    @State var goalTitle = "Goal"
    @State var textTitle = ""
   // @State var ttextTitle = ""
    
    var body: some View {
        VStack {
            Text("Reflect")
                .font(.headline)
                .fontWeight(.bold)
            
            Button("Edit Goal") {
                       showingAlert.toggle()
                   }
                   .alert("Enter Goal Name", isPresented: $showingAlert) {
                       TextField("Enter your goal", text: $textTitle)
                   //    TextField("Enter hours needed", text: $ttextTitle)
                       Button("OK", action: submit)
                   } message: {
                       Text("Xcode will print whatever you type.")
                   }
            
            Text("Goal: \(Int(goalHours)) hours of \(goalTitle)")
                
         
            
            Button("Add an hour!") {
                goalHours += 1.0
            }
            
            Button("Subtract an hour!") {
                goalHours -= 1.0
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
            var color1 = Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
            var color2 = Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))

                
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
    func submit() {
            goalTitle = textTitle
      //      goalHoursText = ttextTitle
        }
    
}
/*
struct ParentView: View {
    
    @StateObject var barNum = ProgressBarNum(hours: 50)
    
    var body: some View {
        ContentView()

    }
}
*/
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
