//
//  ThirdView.swift
//  L5Z1
//
//  Created by student on 28/03/2023.
//

import SwiftUI
struct ThirdView: View {
    var body: some View {
        VStack {
            ZStack{
                Rectangle().fill(.white)
                    .border(.blue)
                    .frame(width:300, height:200)
              RoundedRectangle(cornerRadius: 40)
                    .frame(width:200,height:200)
                    .foregroundColor(.blue)
                Capsule()
                      .frame(width:200,height:100)
                      .foregroundColor(.green)
               Circle()
                      .frame(width:60,height:60)
                      .foregroundColor(.red)
            }
            Text("Jestes w trzecim widoku")
                .frame(width:300, height:40).background(Color.blue)
        }
        .padding()
    }
}
struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
