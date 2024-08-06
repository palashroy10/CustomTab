//
//  ContentView.swift
//  CustomTabs
//
//  Created by Palash Roy on 8/1/24.
//

import SwiftUI
class Tabs: ObservableObject {
    @Published var tabNum: TabNumber = .blue

    enum TabNumber {
        case blue
        case yellow
        case red
        case green
    }
}


struct ContentView: View {
    @ObservedObject var tabtype = Tabs()
    var body: some View {
        
        ZStack {
            
                GeometryReader { geo in
                    VStack {
                    switch tabtype.tabNum {
                    case .blue:
                        BlueTab()
                    case .yellow:
                        YellowTab()
                    case .red:
                        RedTab()
                    case .green:
                        GreenTab()
                    }
                } .frame(width: geo.size.width, height: geo.size.height)
            }

            
            CustomTabView(tabType: tabtype)
        }
        
    }
}

struct BlueTab: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Blue Tab")
            }.frame(width: geo.size.width, height: geo.size.height)
            .background(Color.blue)
        }
    }
}
struct RedTab: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Red Tab")
            }.frame(width: geo.size.width, height: geo.size.height)
            .background(Color.red)
        }
    }
}
struct YellowTab: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Yellow Tab")
            }.frame(width: geo.size.width, height: geo.size.height)
            .background(Color.yellow)
        }
    }
}
struct GreenTab: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Green Tab")
            }.frame(width: geo.size.width, height: geo.size.height)
            .background(Color.green)
        }
    }
}

#Preview {
    ContentView()
}
