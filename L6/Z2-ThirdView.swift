import SwiftUI

struct ThirdView: View {
    @State var kawy: [String] = ["Espresso", "Americano", "Capuccino", "Latte"]
    @Binding var wybor_kawy: String 
    var body: some View {
        Picker(selection: $wybor_kawy, label: Text("Kawa"), content: {
                                       ForEach(kawy, id: \.self) {Text($0)}
                                   }).pickerStyle(MenuPickerStyle())
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(wybor_kawy:.constant(""))
    }
}
