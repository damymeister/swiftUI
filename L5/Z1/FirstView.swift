//
//  FirstView.swift
//  L5Z1
//
//  Created by student on 28/03/2023.
//
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
struct FirstView: View {
    var body: some View {
        VStack {
            NavigationLink(
                destination: SecondView(),
                label:{
                    VStack{
                        Triangle()
                            .frame(width:
                                    200,height:200)
                            .foregroundColor(.green)
                        Text("Przejdz do drugiego widoku")
                            .frame(width:300, height:40).background(Color.green)
                    }
                })
        }
        .padding()
    }
}
