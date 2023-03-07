
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Image("zubr")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack(){
                VStack(alignment: .leading) {
                    Text("Zubr")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                    Text("zdjecie")
                        .font(.subheadline)
                        .foregroundColor(.green)
                }
                Spacer()
            }
            .padding()
            .background(Color.white.opacity(0.5))
            .border(.blue)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
