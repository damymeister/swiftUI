import SwiftUI

struct ContentView: View {
    var obrazki = [(i: ("adam"), name:"Malysz"),
                   (i: ("bmw"), name:"Swiatla"),
                   (i: ("pudzian1"), name: "Pudzian")]
    @State var selection = 0
    @GestureState var isLongPress = false
    var body: some View {
        let longPress = LongPressGesture()
            .updating($isLongPress, body:
                        {value, state, transaction in
                state = value
            })
        
        
        VStack{
            Image(obrazki[selection].i)
                .resizable()
                .frame(width: 250)
                .frame(height: 250)
                .gesture(longPress)
            if(isLongPress){
                Text(obrazki[selection].i)
            }
            Text("Nastepny obrazek ->")
                .gesture(TapGesture()
                    .onEnded(){
                        selection += 1
                        if(selection >= obrazki.count){
                            selection = 0
                            
                        }
                    }
                )
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
