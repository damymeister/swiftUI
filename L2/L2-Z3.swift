
import SwiftUI

struct ContentView: View {
    @State var b1: Int = 0
    @State var b2: Int = 0
    @State var b3: Int = 0
    @State var wynik: String = ""
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Podaj bok nr 1:")
                TextField("bok1", text: Binding(
                    get: {String(b1)},
                    set: {b1 = Int($0) ?? 0}
                ))
            }
            HStack{
                Text("Podaj bok nr 2:")
                TextField("bok2", text: Binding(
                    get: {String(b2)},
                    set: {b2 = Int($0) ?? 0}
                ))
            }
            HStack{
                Text("Podaj bok nr 3:")
                TextField("bok3", text: Binding(
                    get: {String(b3)},
                    set: {b3 = Int($0) ?? 0}
                ))
            }
            Button(action: {
                if b1 + b2 > b3 && b2 + b3 > b1 && b1 + b3 > b2 {
                    wynik = "Z tych bokow mozna zbudowac trojkat"
                } else {
                    wynik = "Z tych bokow nie mozna zbudowac trojkata"
                }
            }, label: {
                Text("Trojkat").foregroundColor(.red)
            })
            
            Text(wynik).foregroundColor(wynik.contains("Nie") ? .red : .green)
            Text("Podano \(b1), \(b2), \(b3)").foregroundColor(.blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
