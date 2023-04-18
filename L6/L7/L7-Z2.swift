import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: FirstView(), label: {
                    Text("Domy").font(.title)
                })
                NavigationLink(destination: SecondView(), label: {
                    Text("Mieszkania").font(.title)
                })
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct Dom{
    var nazwa: String
    var powierzchnia: Double
    var liczbaPokoi: Int
    var wDzialki: Double
    var lPieter: Int
}
struct FirstView: View {
    @State var domy: [Dom] = [Dom(nazwa: "Dom 1", powierzchnia:200, liczbaPokoi: 5, wDzialki: 30.0, lPieter:2),
                           Dom(nazwa: "Dom 2", powierzchnia:300, liczbaPokoi: 3, wDzialki: 20.0, lPieter: 4)]
    var body: some View {
            VStack{
                List{
                    
                    ForEach(0..<domy.count){
                        i in NavigationLink(destination: DomView(dom: $domy[i]), label: {
                            Text(domy[i].nazwa)
                        })
                    }
                    
                }
            }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}


struct Mieszkanie{
    var nazwa: String
    var powierzchnia: Double
    var liczbaPokoi: Int
    var czyDwupoziom: Bool
}

struct SecondView: View {
    @State var mieszkania: [Mieszkanie] = [Mieszkanie(nazwa: "Mieszkanie 1", powierzchnia: 30, liczbaPokoi: 5, czyDwupoziom: true),
                                    Mieszkanie(nazwa: "Mieszkanie 2", powierzchnia: 50, liczbaPokoi: 3, czyDwupoziom: false)
    ]
    var body: some View {
            VStack{
                List{
                    
                    ForEach(0..<mieszkania.count){
                        i in NavigationLink(destination: MieszkanieView(mieszkanie: $mieszkania[i]), label: {
                            Text(mieszkania[i].nazwa)
                        })
                    }
                    
                }
            }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}


import SwiftUI

struct DomView: View {
    @Binding var dom : Dom
    var body: some View {
        VStack{
            Text("Nazwa: " + dom.nazwa)
            Text("Powierzchnia: " + String(dom.powierzchnia))
            Text("Liczba pokoi: " + String(dom.liczbaPokoi))
            Text("Wielkosc dzialki: " + String(dom.wDzialki))
            Text("Liczba pieter: " + String(dom.lPieter))
        }
    }
}

struct DomView_Previews: PreviewProvider {
    static var previews: some View {
        DomView(dom: .constant(Dom(nazwa: "", powierzchnia:0, liczbaPokoi: 0, wDzialki: 0, lPieter:0)))
    }
}

import SwiftUI

struct MieszkanieView: View {
    @Binding var mieszkanie : Mieszkanie
    var body: some View {
        VStack{
            Text("Nazwa: " + mieszkanie.nazwa)
            Text("Powierzchnia: " + String(mieszkanie.powierzchnia))
            Text("Liczba pokoi: " + String(mieszkanie.liczbaPokoi))
        }
    }}

struct MieszkanieView_Previews: PreviewProvider {
    static var previews: some View {
        MieszkanieView(mieszkanie: .constant(Mieszkanie(nazwa: "", powierzchnia: 0, liczbaPokoi: 0, czyDwupoziom: true)))
    }
}
