//
//  ContentView.swift
//  kira-bakery
//
//  Created by sujeong on 2024/05/02.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack{
            Text("KIRA")
            Button(action: {
                print("AA")
            }, label:{ Image("kakaoLogin")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
