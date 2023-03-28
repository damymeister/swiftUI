
import SwiftUI
struct SecondView: View {
    var body: some View {
        VStack {
            NavigationLink(
            destination: ThirdView(),
                label:{
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width:200,height:200)
                                .foregroundColor(.teal)
                            Rectangle()
                                .frame(width:90,height: 90)
                                .foregroundColor(.yellow).offset(x:45, y:-45)
                            Rectangle()
                                .frame(width:90,height: 90)
                                .foregroundColor(.white).offset(x:45, y:45)
                            Rectangle()
                                .frame(width:90,height: 180)
                                .foregroundColor(.gray).offset(x:-45)
                        }
                        Text("Przejdz do trzeciego widoku")
                            .frame(width:300, height:40).background(Color.yellow)
                    }
            })
        }
        .padding()
    }
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
