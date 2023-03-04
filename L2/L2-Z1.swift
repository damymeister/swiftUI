import SwiftUI

struct ContentView: View {
    let tablica_kolorow = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    
    var body: some View {
        VStack {
            ForEach(0..<tablica_kolorow.count) { i in
                Rectangle()
                    .fill(tablica_kolorow[i])
                    .frame(width: 200, height: 200)
                    .offset(x: CGFloat(index) * 210, y: 0)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
