//
//  ListView.swift
//  SwiftUIHelloWorlds
//
//  Created by Rizwan on 07/10/22.
//

import SwiftUI

struct Plant {
    let id = UUID()
    let name:String
}

struct ListView: View {
    @State private var planets: [Plant] = [
        Plant(name: "Mercury"),
        Plant(name: "Venus"),
        Plant(name: "Earth"),
        Plant(name: "Mars"),
        Plant(name: "Jupiter"),
        Plant(name: "Saturn"),
        Plant(name: "Uranus"),
        Plant(name: "Neptune")
    ]
    
    var body: some View {
        NavigationView {
            List(planets, id: \.id) { planet in
                Text(planet.name)
            }
            .navigationTitle("Planet Names")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
