#  🧀 CheesyChart

Create amazing Crypto and Stock charts 📈📉

Looking for an easy to use and fully customizable charting solution written in SwiftUI? Then check out CheesyChart – it’s a Swift Package that makes it simple to create beautiful charts in your own projects. With just a few lines of code, you can create prefect line charts. And if you need to display the current value of the chart, there’s an interactive label for that too. 😩 

So whether you want to create a simple chart or a more complex one, CheesyChart has you covered!



## Installation 🛠

CheesyChart requires iOS 14 and Xcode 11.

1️⃣ In XCode go to `File` ➤ `Add Packages...`

2️⃣ In the top right corner, paste `https://github.com/adri567/CheesyChart.git` 🧀 (without the cheese emoji 😉) and press Enter.

3️⃣ Choose `CheesyChart` from the list of options ➤ `Add Package`

This was easy, or? Now you can use CheesyChart in your project! 📈📉

## Here are some examples

## Usage
<p align="right"> Copy this code ⬇️<p>
 
```swift
  import CheesyChart
 ```


### Setup options with its standart option

 ```swift
name: String = ""
 
data: [Double] = []
 
image: UIImage? = UIImage(systemName: "bitcoinsign.circle.fill")
        
showChartHeader: Bool = false
 
chartHeaderFontColor: Color = .black
 
chartHeaderColor: Color = .clear
 
showHeaderImage: Bool = false
        
chartWidth: Double = UIScreen.main.bounds.width
 
chartHeight: Double = 200
        
animateChart: Bool = false
 
startAnimationAfterAppear: CGFloat = 0.1
 
chartAnimationDuration: CGFloat = 1.0
        
chartBackground: Background = .none
 
chartBackgroundColor: Color = .white
 
chartBackgroundDividerColor: Color = Color(UIColor.lightGray).opacity(0.2)
 
showYAxiesStats: Bool = false
 
yAxiesStatsColor: Color = .black
        
chartLineColorOnHigh: Color = .green
 
lineChartColorOnLow: Color = .red
 
chartLineWidth: CGFloat = 2
        
showShadow1: Bool = false
 
showShadow2: Bool = false
 
showShadow3: Bool = false
 
showShadow4: Bool = false
        
chartPriceLabelColor: Color = .clear
 
chartPriceLabelFontColor: Color = .black
 
chartPriceIndicatorColor: Color = Color(UIColor.lightGray)
 
chartPriceLabelYAxies: CGFloat = 40.0
 
chartPriceLabelCornerRadius: CGFloat = 5
 
chartPriceLabelShadow: Color = .clear
 
