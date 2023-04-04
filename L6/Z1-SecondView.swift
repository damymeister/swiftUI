import SwiftUI
func colorString(c: Color) -> String{
    switch c{
    case Color.black:
        return "Czarny"
    case Color.red:
        return "Czerwony"
    case Color.green:
        return "Zielony"
    default:
        return "Czarny"
    }
}
struct SecondView: View {
    @State var kolory : [Color] = [Color.black, Color.red, Color.yellow, Color.green]
    @Binding var wyb_k : Color
    var body: some View {
        VStack {
            Picker(selection: $wyb_k, label: Text("Kolor"), content: {
                                ForEach(kolory, id: \.self) {Text(colorString(c:$0))}
                            }).pickerStyle(MenuPickerStyle())
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(wyb_k: .constant(Color.black))
    }
}
