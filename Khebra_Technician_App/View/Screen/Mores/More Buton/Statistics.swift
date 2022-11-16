//
//  Statistics.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI
import Charts
struct DayRecord: Identifiable {
    let id = UUID()
    let weekday:String
    let steps: Int
}
struct Statistics: View {
//    let weekdays = Calendar.current.shortWeekdaySymbols
//        let steps = [25, 30, 20, 30,38, 18,28 ]
    let currentWeek:[DayRecord]=[
        DayRecord(weekday: "Mo", steps: 25),
        DayRecord(weekday: "Tu", steps: 30),
        DayRecord(weekday: "We", steps: 20),
        DayRecord(weekday: "Th", steps: 30),
        DayRecord(weekday: "Fr", steps: 38),
        DayRecord(weekday: "Sa", steps: 18),
        DayRecord(weekday: "Su", steps: 28)
    ]
    let IncomeStatisic:[DayRecord]=[
        DayRecord(weekday: "Mo", steps:2500),
        DayRecord(weekday: "Tu", steps:3000 ),
        DayRecord(weekday: "We", steps: 2000),
        DayRecord(weekday: "Th", steps:2800 ),
        DayRecord(weekday: "Fr", steps: 3500),
        DayRecord(weekday: "Sa", steps:1800 ),
        DayRecord(weekday: "Su", steps:2800 )
    ]
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack{
                    HStack{
                        Text("Profile")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size:18))
                    }
                    VStack(spacing:24.97){
                        VStack(spacing:9){
                            HStack(spacing:9){
                                Statistics_Component(text: "Total Orders", image: "Plumbing", Width: 44, Height: 31, number:"435")
                                Statistics_Component(text: "Total Completed Orders", image: "Plumbings2", Width: 52, Height: 34, number:"350")
                            }
                            HStack(spacing:9){
                                Statistics_Component(text: "Total Orders", image: "Plumbings3", Width: 52, Height: 34, number:"435")
                                Statistics_Component(text: "Total Completed Orders", image: "Plumbings4", Width:31.36, Height: 31.34, number:"350")
                            }
                        }
                        VStack{
                            HStack(spacing:140){
                                Text("Orders Statistics")
                                    .foregroundColor(Color("10275C"))
                                    .font(.custom("STC Bold", size:15))
                                
                                RoundedRectangle(cornerRadius: 1)
                                    .fill(.clear)
                                    .frame(width: 83.84,height: 31.64)
                                    .border(Color("B2C1E3"))
                                    .background(.white)
                                    .overlay{
                                        Text("Weekly")
                                            .font(.custom("STCRegular", size: 13))
                                            .foregroundColor(Color("000000").opacity(0.5))
                                    }
                            }
                            VStack{
                                Chart(currentWeek){
                                BarMark(
                                    x:.value("Week Day", $0.weekday),
                                    y:.value("Step Count", $0.steps)
                                )
    //                            .foregroundStyle(by: .value("Week Day",$0.weekday))
                                .foregroundStyle(Color.orange)
                                }.frame(width: 338,height: 182)
                                    .chartYAxis{
                                        AxisMarks(position:.leading){ _ in
                                            AxisValueLabel()
                                        }
                                    }
                                    .chartXAxis {
                                        AxisMarks(position: .bottom) { _ in
    //                                         AxisGridLine().foregroundStyle(.clear)
    //                                         AxisTick().foregroundStyle(.clear)
                                            AxisValueLabel()
                                        }
                                    }
                            }
                            

                        }.frame(width: 338,height: 218)
                        VStack{
                            HStack(spacing:140){
                                Text("Income Statistics")
                                    .foregroundColor(Color("10275C"))
                                    .font(.custom("STC Bold", size:15))
                                
                                RoundedRectangle(cornerRadius: 1)
                                    .fill(.clear)
                                    .frame(width: 83.84,height: 31.64)
                                    .border(Color("B2C1E3"))
                                    .background(.white)
                                    .overlay{
                                        Text("Weekly")
                                            .font(.custom("STCRegular", size: 13))
                                            .foregroundColor(Color("000000").opacity(0.5))
                                    }
                            }
                            VStack{
                                Chart(IncomeStatisic){
                                BarMark(
                                    x:.value("Week Day", $0.weekday),
                                    y:.value("Step Count", $0.steps)
                                )
    //                            .foregroundStyle(by: .value("Week Day",$0.weekday))
                                .foregroundStyle(Color.orange)
                                }.frame(width: 338,height: 182)
                                    .chartYAxis{
                                        AxisMarks(position:.leading){ _ in
                                            AxisValueLabel()
                                        }
                                    }
                                    .chartXAxis {
                                        AxisMarks(position: .bottom) { _ in
    //                                         AxisGridLine().foregroundStyle(.clear)
    //                                         AxisTick().foregroundStyle(.clear)
                                            AxisValueLabel()
                                        }
                                    }
                            }
                            

                        }.frame(width: 338,height: 218)
                    }
                }
                Spacer()
            }
            
        }
    }
}

struct Statistics_Previews: PreviewProvider {
    static var previews: some View {
        Statistics()
    }
}
struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}
