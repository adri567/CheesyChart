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

 
### Setup options
 
name: String
data: [Double]
image: UIImage?
        
showChartHeader: Bool
chartHeaderFontColor: Color
chartHeaderColor: Color
showHeaderImage: Bool
        
chartWidth: Double
chartHeight: Double
        
animateChart: Bool
startAnimationAfterAppear
chartAnimationDuration: CGFloat
        
chartBackground: Background
chartBackgroundColor: Color
chartBackgroundDividerColor: Color
showYAxiesStats: Bool
yAxiesStatsColor: Color
        
chartLineColorOnHigh: Color
lineChartColorOnLow: Color
chartLineWidth: CGFloat
        
showShadow1: Bool
showShadow2: Bool
showShadow3: Bool
showShadow4: Bool
        
chartPriceLabelColor: Color
chartPriceLabelFontColor: Color
chartPriceIndicatorColor: Color
chartPriceLabelYAxies: CGFloat
chartPriceLabelCornerRadius: CGFloat
chartPriceLabelShadow: Color
