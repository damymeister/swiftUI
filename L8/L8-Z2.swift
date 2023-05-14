import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          FirstView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
import SwiftUI

struct FirstView: View {
    @State private var bg = Color.white
    @State private var option = ""
    @State private var nazwa = "≡"
    var body: some View {
        ZStack{
            VStack{
                SecondView(option: $option, nazwa: $nazwa)
                    .padding(.bottom, 30).font(.title)
                Spacer()
            }
            VStack{
              
                Text("Wybrana opcja: \(option)")
                    .padding()
                RectangleShow(bg: $bg)
            }
            
         
        }
    
        .background(bg)
        .foregroundColor(Color.black)
    }
}


struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

import SwiftUI
struct SecondView: View {
    @State var options : [String] = ["Opcja 1", "Opcja 2", "Opcja 3"]
    @State var suboptions : [[String]] = [[], ["Opcja 2.1", "Opcja 2.2"], ["Opcja 3.1", "Opcja 3.2"]]
    @Binding var option: String
    @Binding var nazwa: String
    func menu() -> some View {
        Menu(nazwa){
            Button(action: {
                self.option = options[0]
            }) {
                Text(options[0])
            }

            Menu(options[1]) {
                Button(action: {
                    self.option = suboptions[1][0]
                }) {
                    Text(suboptions[1][0])
                }
                Button(action: {
                    self.option = suboptions[1][1]
                }) {
                    Text(suboptions[1][1])
                }
            }

            Menu(options[2]) {
                Button(action: {
                    self.option = suboptions[2][0]
                }) {
                    Text(suboptions[2][0])
                }
                Button(action: {
                    self.option = suboptions[2][1]
                }) {
                    Text(suboptions[2][1])
                }
            }
        }
        .padding()
    }
    
    var body: some View {
        menu()
    }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(option: .constant(""), nazwa: .constant(""))
    }
}

import SwiftUI
struct RectangleShow: View {
    @Binding var bg: Color
    var body: some View {
        HStack {
                       Colors(color: .red, bg: $bg)
                       Colors(color: .green, bg: $bg)
                       Colors(color: .blue, bg: $bg)
                       Colors(color: .white, bg: $bg)
        }
        .padding()
    }
}


import SwiftUI

struct Colors: View {
    let color: Color
    @Binding var bg: Color
    var body: some View {
        Button(action: {
            self.bg = self.color
        }) {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(color)
                .frame(width: 60, height: 60)
                .border(.black)
        }
    }
}


