//
//  ContentView.swift
//  testclock
//
//  Created by 川口愉一 on 2023/06/18.
//

import SwiftUI

struct ContentView: View {
    @State var dispYear = ""
    @State var dispMonth = ""
    @State var dispDate = ""
    @State var dispDOW = ""
    @State var dispHour = ""
    @State var dispMinute = ""
    @State var dispSecond = ""
    @State var nowDate = Date()
    private let dateFormatterYear = DateFormatter()
    private let dateFormatterMonth = DateFormatter()
    private let dateFormatterDate = DateFormatter()
    private let dateFormatterHour = DateFormatter()
    private let dateFormatterMinute = DateFormatter()
    private let dateFormatterSecond = DateFormatter()
    private let dateFormatterDOW = DateFormatter()
    init() {
        dateFormatterYear.dateFormat = "YYYY年"
        dateFormatterYear.locale = Locale(identifier: "ja_JP")
        dateFormatterMonth.dateFormat = "MMM"
        dateFormatterMonth.locale = Locale(identifier: "ja_JP")
        dateFormatterDate.dateFormat = "dd日"
        dateFormatterDate.locale = Locale(identifier: "ja_JP")
        dateFormatterDOW.dateFormat = "(E)"
        dateFormatterDOW.locale = Locale(identifier: "ja_JP")
        dateFormatterHour.dateFormat = "H"
        dateFormatterHour.locale = Locale(identifier: "ja_JP")
        dateFormatterMinute.dateFormat = "mm"
        dateFormatterMinute.locale = Locale(identifier: "ja_JP")
        dateFormatterSecond.dateFormat = "ss"
        dateFormatterSecond.locale = Locale(identifier: "ja_JP")
    }
    var body: some View {
        VStack {
            HStack {
                Text(dispYear.isEmpty ? "\(dateFormatterYear.string(from: nowDate))" : dispYear)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispYear = "\(dateFormatterYear.string(from: nowDate))"
                        }
                    }
                    .foregroundColor(.secondary)
                    .font(
                        .system(
                            size: 40,
                            weight: .heavy,
                            design: .default
                        )
                    )
                    .padding()
                Text(dispDOW.isEmpty ? "\(dateFormatterDOW.string(from: nowDate))" : dispDOW)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispDOW = "\(dateFormatterDOW.string(from: nowDate))"
                        }
                    }
                    .foregroundColor(.secondary)
                        .font(
                            .system(
                                size: 40,
                                weight: .heavy,
                                design: .default
                            )
                        )
                        .padding()
            }
            HStack {
                Text(dispMonth.isEmpty ? "\(dateFormatterMonth.string(from: nowDate))" : dispMonth)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispMonth = "\(dateFormatterMonth.string(from: nowDate))"
                        }
                    }
                    .foregroundColor(.accentColor)
                    .font(
                        .system(
                            size: 50,
                            weight: .heavy,
                            design: .default
                        )
                    )
                    .padding()
                Text(dispDate.isEmpty ? "\(dateFormatterDate.string(from: nowDate))" : dispDate)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                            self.nowDate = Date()
                            dispDate = "\(dateFormatterDate.string(from: nowDate))"
                        }
                    }
                    .foregroundColor(.accentColor)
                        .font(
                            .system(
                                size: 50,
                                weight: .heavy,
                                design: .default
                            )
                        )
                        .padding()
            }.padding(
                EdgeInsets(
                    top: 1,        // 上の余白
                    leading: 1,    // 左の余白
                    bottom: -40,     // 下の余白
                    trailing: 1    // 右の余白
                )
            )
            .offset(y: -40)
            Text(dispHour.isEmpty ? "\(dateFormatterHour.string(from: nowDate))" : dispHour)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.nowDate = Date()
                        dispHour = "\(dateFormatterHour.string(from: nowDate))"
                    }
                }
                .foregroundColor(.primary)
                .font(
                    .system(
                        size: 240,
                        weight: .heavy,
                        design: .default
                    )
                )
                .padding(
                    EdgeInsets(
                        top: 1,        // 上の余白
                        leading: 1,    // 左の余白
                        bottom: -80,     // 下の余白
                        trailing: 1    // 右の余白
                    )
                )
                .offset(y: -70)
            Text(dispMinute.isEmpty ? "\(dateFormatterMinute.string(from: nowDate))" : dispMinute)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.nowDate = Date()
                        dispMinute = "\(dateFormatterMinute.string(from: nowDate))"
                    }
                }
                .foregroundColor(.primary)
                .font(
                    .system(
                        size: 240,
                        weight: .heavy,
                        design: .default
                    )
                )
                .padding(
                    EdgeInsets(
                        top: 1,        // 上の余白
                        leading: 1,    // 左の余白
                        bottom: -80,     // 下の余白
                        trailing: 1    // 右の余白
                    )
                )
                .offset(y: -70)
            Text(dispSecond.isEmpty ? "\(dateFormatterSecond.string(from: nowDate))" : dispYear)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
                        self.nowDate = Date()
                        dispYear = "\(dateFormatterSecond.string(from: nowDate))"
                    }
                }
                .foregroundColor(.red)
                .font(
                    .system(
                        size: 240,
                        weight: .heavy,
                        design: .rounded
                    )
                )
                .padding(
                    EdgeInsets(
                        top: 1,        // 上の余白
                        leading: 1,    // 左の余白
                        bottom: -80,     // 下の余白
                        trailing: 1    // 右の余白
                    )
                )
                .offset(y: -70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
