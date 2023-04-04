import SwiftUI
struct FirstView: View {
    @State var kolor : Color = Color.black
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView(wyb_k: $kolor), label: {
                    Text("Kolor").font(.title)
                })
                
                Text("Kolorowy tekst").foregroundColor(kolor)
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
