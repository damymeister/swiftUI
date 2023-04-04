import SwiftUI

struct FirstView: View {
    @State var sok : String = ""
    @State var kawa : String = ""
    var body: some View {
        NavigationView{
                    VStack{
                        NavigationLink(
                    destination: SecondView(wybor_soku: $sok),
                    label:{
                        Text("Wybierz smak soku").frame(width: 250, height: 50)
                            .background(Color.orange)
                    })
                        NavigationLink(
                            destination: ThirdView(wybor_kawy: $kawa),
                    label:{
                        Text("Wybierz Kawe").frame(width: 250, height: 50)
                            .background(Color.brown)
                    })
                    }
            }
        VStack{
            Text("Wybrany sok to: \(sok)").foregroundColor(.orange)
            Text("Wybrana kawa to: \(kawa)").foregroundColor(.brown)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
