import SwiftUI
struct SecondView: View {
    @Binding var wyb_aut: String
    var body: some View {

        Text("Podaj autora")

        TextField("Podaj autora", text: $wyb_aut)

    }
}
struct SecondView_Previews: PreviewProvider {

    static var previews: some View {

        SecondView(wyb_aut: .constant(""))
    }
}
