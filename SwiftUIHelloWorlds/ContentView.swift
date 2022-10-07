//
//  ContentView.swift
//  SwiftUIHelloWorlds
//
//  Created by Moyses Miranda do Vale Azevedo on 23/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Crie uma navigation View")
                Text("Dentro dela construa um NavigationLink")
                NavigationLink(destination: Text("Destino"), label: {
                    Text("Proxima tela")
                })
                NavigationLink("List Example", destination: ListView())
            }.navigationTitle("Como mudar de tela")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
