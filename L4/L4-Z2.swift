import SwiftUI
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}
func colorString(c: Color) -> String{
    switch c{
    case Color.red:
        return "Czerwony"
    case Color.green:
        return "Zielony"
    case Color.blue:
        return "Niebieski"
    case Color.gray:
        return "Szary"
    case Color.purple:
        return "Fioletowy"
    default:
        return "Czarny"
    }
}
func shapeShifter (ksztalt: String, kolor: Color, xr: Int, yr: Int) -> AnyView {
    switch ksztalt{
    case "Trojkat":
        return AnyView(Triangle()
            .fill(kolor)
            .frame(width: CGFloat(xr/2), height: CGFloat(yr/2)))
    case "Kolo":
        return AnyView(Circle()
            .fill(kolor)
            .frame(width: CGFloat(xr/2), height: CGFloat(yr/2)))
    case "Prostokat":
        return AnyView(Rectangle()
            .fill(kolor)
            .frame(width: CGFloat(xr/2), height: CGFloat(yr/2)))
    default:
        return AnyView(Rectangle()
            .fill(kolor)
            .frame(width: CGFloat(xr/2), height: CGFloat(yr/2)))
    }
}

struct ContentView: View {
    @State var ksztalty: [String] = ["Prostokat", "Kolo", "Trojkat"]
    @State var wybrany_kszt : String = ""
    @State var kolory = [Color.red, Color.blue, Color.green, Color.gray, Color.purple]
    @State var wybrany_kolor: Color = Color.red
    @State var xr: Int = 0
    @State var yr: Int = 0
    @State var rysujramke : Bool = false
    var body: some View {
        VStack {
            Picker(selection: $wybrany_kszt,
        label:
            Text("Ksztalty")){
                ForEach(ksztalty, id: \.self){
                    Text($0)
                }
            }
            Picker(selection: $wybrany_kolor,
                   label:
                    Text("Kolory")){
                ForEach(kolory, id: \.self)
                {
                    Text(colorString(c:$0))
                }
            }
            HStack{
              Text("Ramka")
    TextField("xr",
              text: Binding(
                get: {String(xr)},
                set: {xr = Int ($0) ?? 0}
              )).frame(width:35)
                Text("X")
        TextField("yr",
                  text: Binding(
                    get: {String(yr)},
                    set: {yr = Int ($0) ?? 0}
                  )).frame(width:35)
            }
            Toggle("Rysuj ramke", isOn: $rysujramke)
                .toggleStyle(SwitchToggleStyle(tint:.green))
            Rectangle().foregroundColor(Color.black.opacity(0))
                .frame(width: CGFloat(xr), height: CGFloat(yr)).border(Color.black,width:(rysujramke ? 1 : 0)).overlay{shapeShifter(ksztalt: wybrany_kszt, kolor: wybrany_kolor, xr: xr, yr: yr) }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
