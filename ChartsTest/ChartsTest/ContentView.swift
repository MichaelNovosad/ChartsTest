//
//  ContentView.swift
//  ChartsTest
//
//  Created by Michael Novosad on 26.12.2022.
//

import SwiftUI
import Charts

struct ContentView: View {
    let data: [MountPrice] = [
        MountPrice(mount: "jan/22", value: 5),
        MountPrice(mount: "feb/22", value: 3),
        MountPrice(mount: "mar/22", value: 7)
    ]
    var body: some View {
        List {
            Chart(data) {
                BarMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
            .padding()

            Chart(data) {
                LineMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
            .padding()

            Chart(data) {
                PointMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
            .padding()

            Chart(data) {
                AreaMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
            .padding()

            Chart(data) {
                RectangleMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
            .padding()

            Chart {
                RuleMark(xStart: .value("Start", 1),
                         xEnd: .value("End", 12),
                         y: .value("Value", 2.5)
                )
                RuleMark(xStart: .value("Start", 9),
                         xEnd: .value("End", 16),
                         y: .value("Value", 1.5)
                )
                RuleMark(xStart: .value("Start", 3),
                         xEnd: .value("End", 10),
                         y: .value("Value", 0.5)
                )
            }
            .padding()

            Chart(data) {
                LineMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
                PointMark(
                    x: .value("Mount", $0.mount),
                    y: .value("Value", $0.value)
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MountPrice: Identifiable {
    var id = UUID()
    var mount: String
    var value: Double
}
