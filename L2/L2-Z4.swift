import SwiftUI

struct ContentView: View {
    @State var liczba1: Double = 0.0
    @State var liczba2: Double = 0.0
    @State var wynik: Any = 0
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text("Podaj pierwszą liczbę rzeczywistą").foregroundColor(.gray)
                TextField("Liczba 1", text: Binding(
                            get: { String(liczba1) },
                            set: { liczba1 = Double($0) ?? 0.0 }
                        ))
            }
            HStack {
                Text("Podaj drugą liczbę rzeczywistą").foregroundColor(.gray)
                TextField("Liczba 2", text: Binding(
                            get: { String(liczba2) },
                            set: { liczba2 = Double($0) ?? 0.0 }
                        ))
            }
            HStack {
                Button(action: {
                    wynik = liczba2 + liczba1
                }, label: {
                    Text("+").foregroundColor(.red)
                })
                Button(action: {
                    wynik = liczba1 - liczba2
                }, label: {
                    Text("-").foregroundColor(.red)
                })
                Button(action: {
                    wynik = liczba1 * liczba2
                }, label: {
                    Text("*").foregroundColor(.red)
                })
                Button(action: {
                    if liczba2 != 0.0 {
                        wynik = liczba1 / liczba2
                    }
                    else {
                        wynik = "Nie dzielimy przez 0"
                    }
                }, label: {
                    Text("/").foregroundColor(.red)
                })
            }
            Text("Wynik: \(wynik)").padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
