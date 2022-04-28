#  🧀 CheesyChart

Create amazing Crypto and Stock charts 📈📉

Looking for an easy to use and fully customizable charting solution written in SwiftUI? Then check out CheesyChart – it’s a Swift Package that makes it simple to create beautiful charts in your own projects. With just a few lines of code, you can create prefect line charts. And if you need to display the current value of the chart, there’s an interactive label for that too. 😩 

So whether you want to create a simple chart or a more complex one, CheesyChart has you covered!



## 🛠 Installation

CheesyChart requires iOS 14 and Xcode 11.

1️⃣ In XCode go to `File` ➤ `Add Packages...`

2️⃣ In the top right corner, paste `https://github.com/adri567/CheesyChart.git` 🧀 (without the cheese emoji 😉) and press Enter.

3️⃣ Choose `CheesyChart` from the list ➤ `Add Package`

This was easy, or? Now you can use CheesyChart in your project! 📈📉

## 📊 Here are some examples

![dark](https://user-images.githubusercontent.com/26815443/165791488-c8d3504b-a9e6-4ce5-9151-7bad0363227e.gif)

![light](https://user-images.githubusercontent.com/26815443/165791311-9a4df04c-019a-4765-be7c-aea10280711b.gif)


## 🪛 Usage
<p align="right"> Copy this code ⬇️<p>
 
```swift
  import CheesyChart
 ```


### All setup possibilities with its standard values 🔥

 ```swift
name: String = "" // Name of the coin or stock
 
data: [Double] = [] // Price data
 
image: UIImage? = UIImage(systemName: "bitcoinsign.circle.fill") // Standart image if image is shown
        
showChartHeader: Bool = false // Default chart header
 
chartHeaderFontColor: Color = .black // Font color of the chart
 
chartHeaderColor: Color = .clear // Whole color of the chart
 
showHeaderImage: Bool = false // Show header image
        
chartWidth: Double = UIScreen.main.bounds.width // Width of the chart
 
chartHeight: Double = 200 // Height of the chart
        
animateChart: Bool = false // Line animation (from 0 to 1)
 
startAnimationAfterAppear: CGFloat = 0.1 // Animation after the appearance of the chart
 
chartAnimationDuration: CGFloat = 1.0 // Duration of the animation
        
chartBackground: Background = .none // Chart backgrounds (choose between .none, .cb1, .cb2, .cb3, .cb4, .cb5)
 
chartBackgroundColor: Color = .white // Whole background color of the chart
 
chartBackgroundDividerColor: Color = Color(UIColor.lightGray).opacity(0.2) // X axies divider color
 
showYAxiesStats: Bool = false // Price stats on the left across the y axies
 
yAxiesStatsColor: Color = .black // Color of the stats
        
chartLineColorOnHigh: Color = .green // Chart color if the price goes up
 
lineChartColorOnLow: Color = .red // Chart color if the price goes down
 
chartLineWidth: CGFloat = 2 // Width of the chart line
        
showShadow1: Bool = false // Shadow 1 of the line
 
showShadow2: Bool = false // Shadow 2 of the line
 
showShadow3: Bool = false // Shadow 3 of the line
 
showShadow4: Bool = false // Shadow 4 of the line
        
chartPriceLabelColor: Color = .clear // Color of the drag price label
 
chartPriceLabelFontColor: Color = .black // Font color of the drag price label
 
chartPriceIndicatorColor: Color = Color(UIColor.lightGray) // Color of the price y axies indicator
 
chartPriceLabelYAxies: CGFloat = 40.0 // Position of the price label on the y axies
 
chartPriceLabelCornerRadius: CGFloat = 5 // Corner radius of the price label
 
chartPriceLabelShadow: Color = .clear // Shadow of the price label
 
