import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            NavigationLink(
            destination: SecondView(),
                label:{
                Text("Przejdz do drugiego widoku")
                    .frame(width:300, height:40).background(Color.green)
            })
        }
        .padding()
    }
}
struct SecondView: View {
    var body: some View {
        VStack {
            NavigationLink(
            destination: ThirdView(),
                label:{
                Text("Przejdz do trzeciego widoku")
                    .frame(width:300, height:40).background(Color.yellow)
            })
        }
        .padding()
    }
}
struct ThirdView: View {
    var body: some View {
        VStack {
           Text("Jestes w trzecim widoku")
                .frame(width:300, height:40).background(Color.blue)
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
