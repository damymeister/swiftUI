import SwiftUI

struct ContentView: View {
    @GestureState var isLongPress = false
    var body: some View {
        let longPress = LongPressGesture()
            .updating($isLongPress, body:
                        {value, state, transaction in
                state = value
            })
        VStack {
         Text("Dowolny napis")
                .foregroundColor(isLongPress ? .red : .yellow).gesture(longPress)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
