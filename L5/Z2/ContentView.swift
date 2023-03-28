//
//  ContentView.swift
//  L5-Z2
//
//  Created by student on 28/03/2023.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
            destination: FirstView(),
            label:{
                Text("Porsche").frame(width: 250, height: 50)
                    .background(Color.black)
            })
                NavigationLink(
            destination: SecondView(),
            label:{
                Text("Aston Martin").frame(width: 250, height: 50)
                    .background(Color.green)
            })
                NavigationLink(
            destination: ThirdView(),
            label:{
                Text("Ferrari").frame(width: 250, height: 50)
                    .background(Color.red)
            })
            }
    }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
