import SwiftUI

struct PanelView: View {
  @Binding var ileRazy: Int
  var body: some View{
    VStack{
      Button(action: {
        ileRazy += 1
      }){
        Text("Wcisnij")
      }
    }
  }
}
struct PanelView_Previews:
  PreviewProvider{
    static var previews: Some View{
      PanelView(ileRazy: .constant(0))
  }
}
