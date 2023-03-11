import SwiftUI
//do dokonczenia
struct ContentView: View{
  @State var wybranyRozmiar: String = ""
  @State var wybranaFirma: String = ""
  @State var rozmiary = ["185/60 R14", "195/65 R15", "205/55 R16", "215/60 R17"]
  @State var firmy = ["Pirelli", "Kormoran", "GoodYear", "BridgeStone", "GoodRide"]
  @State var liczbaopon : Int = 0;
  var body: some View{
    VStack(alignment: .center){
      Picker(selection: $wybranyRozmiar,
             label:
              Text("Rozmiary)){
                   ForEach(rozmiary, id: \.self){
                     Text($0)
    }
      Picker(selection: $wybranaFirma,
             label: Text("Firmy")){
              ForEach(firmy, id: \.self){
             Text($0)
  }
      }
       TextField("Liczba Opon", 
                 text: Binding(
                   get: {String(liczbaopon)},
                   set: {liczbaopon = Int ($0) ?? 0}
                 ).frame(width:60)
                 .border(.black)
       }.padding()
struct ContentView_Previews: PreviewProvider{
  static var previews: some View{
    ContentView()
  }
}
