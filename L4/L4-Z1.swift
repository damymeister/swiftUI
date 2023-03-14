import SwiftUI

struct ContentView: View {
    @State var wybranaWalutaKupna: String = ""
    @State var wybranaWalutaSprzedazy: String = ""
    @State var iloscwaluty : Double = 0.0
    @State var waluty : [String] = ["EUR", "USD", "PLN", "GBP","CHF"]
    @State var kupno : [Double] = [4.8, 4.4, 1.0, 5.33, 4.81]
    @State var sprzedaz : Double = 1.005
    @State var wynik : Double = 0.00
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Text("Kantor").foregroundColor(.white).font(.title)
                Spacer()
            }.background(.black)
            Spacer()
            HStack{
                TextField("Ilosc waluty",
                          text: Binding(
                            get: {String(iloscwaluty)},
                            set: {iloscwaluty = Double ($0) ?? 0.0}
                          )).frame(width:60)
                Picker(selection: $wybranaWalutaKupna,
                       label:
                        Text("Waluty")){
                    ForEach(waluty, id: \.self){
                        Text($0)
                    }
                }
            }
            Button(action:{
                wynik = iloscwaluty * kupno[waluty.firstIndex(of: wybranaWalutaKupna) ?? 0] * (1.0 / (kupno[waluty.firstIndex(of: wybranaWalutaSprzedazy) ?? 0] * sprzedaz))
            }){Text("Oblicz!")}
            HStack{
                Text("Otrzymasz: ").foregroundColor(.gray)
                Text(String(format: "%.2f", wynik))
                Picker(selection: $wybranaWalutaSprzedazy,
                       label: Text("Waluty")){
                    ForEach(waluty, id: \.self){
                        Text($0)
                    }
                }
            }
            Spacer()
        }.multilineTextAlignment(.center)
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

