import SwiftUI

struct ContentView: View {
    let dniTygodnia = ["poniedziałek", "wtorek", "środa", "czwartek", "piątek", "sobota", "niedziela"]
    @State var dzien: String = ""
    @State var dzienwybor: String = ""
    @State var wybor : String = ""
    var body: some View {
        VStack (alignment: .center){
            Text("Podaj wybrany dzien tygodnia: ").foregroundColor(.blue).rotation3DEffect(.degrees(45.0), axis: (x:1, y:0, z: 0) )
            TextField("Wpisz dzien tygodnia: ", text: $dzien).multilineTextAlignment(.center)
            Button(action:{ dzienwybor = dzien
                if dniTygodnia.contains(dzien.lowercased()){
                wybor = "Wprowadziles dobry dzien tygodnia"
                }else{
                    wybor = "Niepoprawny dzien tygodnia"
                }},
                   label:{
                Text("Zatwierdz wybor").foregroundColor(.red)
            })
            Text("Wybrano: \(dzienwybor)")
            Text("\(wybor)").foregroundColor(wybor.contains("Nie") ? .red : .green)
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
