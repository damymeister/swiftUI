import SwiftUI
struct FirstView: View {
    @State var autorzy: [(String, String, String, Int)] = [("Adam", "Mickiewicz","Pan Tadeusz", 5), ("Julisz", "Slowacki", "Anhelli", 3), ("Adrian", "Newey", "F1",8)]
    @State var autor : String = ""
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination:SecondView(wyb_aut: $autor), label: {
                    Text("Wybierz autora")
                        .font(.title)
                        .foregroundColor(.blue)

                })

                Text("Dostepne ksiazki autora:\(autor)")

                    .font(.title)
                    .foregroundColor(.purple)

                ForEach(getBooksByAuthor(autor: autor, autorzy: autorzy), id: \.3) { autor in

                    VStack {
                        Text("Imię: \(autor.0)")

                            .foregroundColor(.blue)

                        Text("Nazwisko: \(autor.1)")

                            .foregroundColor(.blue)

                        Text("Tytuł książki: \(autor.2)")

                            .foregroundColor(.blue)

                        Text("Ilosc: \(autor.3)")

                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}
