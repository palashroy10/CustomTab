//
//  CustomTabView.swift
//  CustomTabs
//
//  Created by Palash Roy on 8/1/24.
//

import Foundation
import SwiftUI

struct CustomTabView: View {
    @ObservedObject var tabType: Tabs
    @State private var location: CGPoint = CGPoint(x: 350, y: 350)
    @State var geoConstant = 30.0
    @State var rotate: Bool = true
    var simpleDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
            }
    }
    
    var body: some View {
        ZStack {
            
        
            HStack {
                VStack {
                    Image("Blue", bundle: .main).resizable().frame(width: geoConstant, height: geoConstant).onTapGesture {
                        if rotate == false {
                            tabType.tabNum = .blue
                        } else {
                            geoConstant = geoConstant == 30 ? 60 : 30
                            rotate.toggle()
                        }
                    }
                    Image("Green", bundle: .main).resizable().frame(width: geoConstant, height: geoConstant).onTapGesture {
                        
                        if rotate == false {
                            tabType.tabNum = .green
                        } else {
                            geoConstant = geoConstant == 30 ? 60 : 30
                            rotate.toggle()
                        }
                    }
                    
                }
                
                VStack {
                    Image("Red", bundle: .main).resizable().frame(width: geoConstant, height: geoConstant).onTapGesture {
                        if rotate == false {
                            tabType.tabNum = .red
                        } else {
                            geoConstant = geoConstant == 30 ? 60 : 30
                            rotate.toggle()
                        }
                    }
                    Image("Yellow", bundle: .main).resizable().frame(width: geoConstant, height: geoConstant).onTapGesture {
                        if rotate == false {
                            tabType.tabNum = .yellow
                        } else {
                            geoConstant = geoConstant == 30 ? 60 : 30
                            rotate.toggle()
                        }
                    }
                }
            }.rotationEffect(.degrees(rotate ? 360 : -360))
            
            Image("Oval", bundle: .main).resizable().frame(width: geoConstant, height: geoConstant).onTapGesture {
                geoConstant = geoConstant == 30 ? 60 : 30
                rotate.toggle()
            }
        }.position(location)
        .gesture(
                simpleDrag
            )
        .onTapGesture {
            geoConstant = geoConstant == 30 ? 60 : 30
            rotate.toggle()
        }
        .animation(.easeInOut, value: rotate)
    }
}


struct contentab: View {
    @State private var location: CGPoint = CGPoint(x: 350, y: 350)
    
    var simpleDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
            }
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.pink)
            .frame(width: 100, height: 100)
            .position(location)
            .gesture(
                simpleDrag
            )
        
    }
}
