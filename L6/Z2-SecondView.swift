import SwiftUI

struct SecondView: View {
    @State var smaki: [String] = ["Jablkowy", "Malinowy", "Pomaranczowy"]
    @Binding var wybor_soku : String
    var body: some View {
        VStack{
            Text("Wybierz smak soku").font(.title)
            Button(action: {
                wybor_soku = smaki[0]
              }){
                Image("jablkowy").resizable()
              }
            Button(action: {
                wybor_soku = smaki[1]
              }){
                Image("malinowy").resizable()
              }
            Button(action: {
                wybor_soku = smaki[2]
              }){
                Image("pomaranczowy").resizable()
              }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(wybor_soku: .constant(""))
    }
}
