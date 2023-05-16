import SwiftUI
struct Car{
    var brand: String
    var model: String
    var logo: Image
}
struct ContentView: View {
    @State var auta: [Car] = [
        Car(brand:"Lamborghini", model: "Hurracan", logo: Image("lambo")),
        Car(brand:"Ferrari", model:"Enzo", logo:Image("ferrari")),
        Car(brand:"Bugatti", model:"Chiron", logo: Image("bugatti"))
    ]
    @State var deleted: [Int] = []
    var body: some View {
        VStack {
            List{
                ForEach(0..<auta.count){
                    a in if(!deleted.contains(a)){
                        CarView(auto: $auta[a])
                            .gesture(TapGesture()
                                .onEnded(){
                                    deleted.append(a)
                                })
                    }
                }
            }
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

struct CarView: View {
    @Binding var auto: Car
    var body: some View {
        HStack{
            Text("\(auto.brand) ")
            Text("\(auto.model) ")
            auto.logo
                .resizable()
                .frame(width:40, height:30)
        }
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(auto:. constant(Car(brand: "", model: "", logo:Image(""))))
    }
}

