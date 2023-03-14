//
//  ContentView.swift
//  l1mat
//
//  Created by student on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var wybranyRozmiar: String = ""
    @State var wybranaFirma: String = ""
    @State var rozmiary = ["185/60 R14", "195/65 R15", "205/55 R16", "215/60 R17"]
    @State var firmy = ["Pirelli", "Kormoran", "GoodYear", "BridgeStone"]
    @State var liczbaopon : Int = 0;
    @State var magazyn = [[3,5,7,10],[11,18,3,2],[6,7,5,3],[3,4,11,30]]
    @State var dostepnosc : String = ""
    var body: some View {
        VStack {
            Text("Rozmiary opon:").foregroundColor(.gray)
            Picker(selection: $wybranyRozmiar,
                   label:
                    Text("Rozmiary")){
                ForEach(rozmiary, id: \.self){
                    Text($0)
                }
            }
            Text("Firma:").foregroundColor(.gray)
            Picker(selection: $wybranaFirma,
                   label: Text("Firmy")){
                ForEach(firmy, id: \.self){
                    Text($0)
                }
            }
            Text("Wprowadz liczbe opon:").foregroundColor(.gray)
            TextField("Liczba Opon",
                            text: Binding(
                              get: {String(liczbaopon)},
                              set: {liczbaopon = Int ($0) ?? 0}
                            ))
            Button(action: {
                if magazyn[firmy.firstIndex(of: wybranaFirma) ?? 0][rozmiary.firstIndex(of: wybranyRozmiar) ?? 0] >= liczbaopon{
                    dostepnosc = "Opony sa dostepne"
                }else{
                    dostepnosc = "Opony nie sa dostepne"
                }
                              }, label: {
                                  Text("Sprawdz").foregroundColor(.red)
                              }
            )
            Text("\(dostepnosc)")
        }.multilineTextAlignment(.center)
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
