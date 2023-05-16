import SwiftUI

struct ContentView: View {
    @GestureState var isLongPress = false
    @State var offset: CGSize = .zero
    var body: some View {
        let longPressandDrag = LongPressGesture()
                  .updating($isLongPress, body:
                              {value, state, transition in
                      state = value
                  })
                    .simultaneously(with: DragGesture()
                    .onChanged {self.offset = $0.translation})
        VStack {
                      Rectangle()
                          .frame(width:150, height:150)
                          .offset(x: offset.width, y: offset.height)
                          .gesture(longPressandDrag)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
