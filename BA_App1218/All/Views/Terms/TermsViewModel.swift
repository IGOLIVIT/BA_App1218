//
//  TermsViewModel.swift
//  BA_App1218
//
//  Created by IGOR on 08/02/2025.
//

import SwiftUI

final class TermsViewModel: ObservableObject {
    
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isSettings: Bool = false
    
    @Published var selectedTerm: TermsModel?
    
    @Published var terms: [TermsModel] = [
        
        TermsModel(title: "1. Trading Basics", photo: "t1", information: """

Asset – A financial instrument that can be traded, such as stocks, currencies, commodities, or cryptocurrencies.
Trade – The act of buying or selling an asset in the market.
Loss –  The financial deficit incurred when the selling price is lower than the buying price.
Volatility –  The degree of variation in the price of an asset over time.
Expiry Time –  The predetermined time when a trading position automatically closes.
Payout–  The amount of money a trader earns if a trade ends in profit
Entry Point–  The price level at which a trade is opened.
Exit Point–  The price level at which a trade is closed.
Investment Amount–  The amount of money allocated to a single trade.

"""),
        
        TermsModel(title: "2. Types of Assets", photo: "t2", information: """

Currency Pairs (Forex) – A pair of currencies traded against each other in the forex market.
Stocks – Shares of ownership in a company.
Commodities – Physical goods like gold, oil, or agricultural products traded in markets.
Cryptocurrencies – Digital or virtual currencies that use cryptography for security.
Indices – A measurement of the performance of a group of assets, like the S&P 500.
Synthetic Assets – Financial instruments that mimic the behavior of other assets.
Precious Metals – Valuable metals like gold, silver, and platinum.
Energy Resources – Commodities like oil and natural gas.
ETFs (Exchange-Traded Funds) – Funds traded on stock exchanges that hold a diversified portfolio of assets.

"""),
        
        TermsModel(title: "3. Market Analysis", photo: "t3", information: """

Fundamental Analysis – Evaluating an asset's value by examining economic and financial factors.
Technical Analysis – Analyzing price charts and indicators to predict future price movements.
Trend – The general direction in which the market is moving.
Support Level – A price level where an asset tends to stop falling due to demand.
Resistance Level – A price level where an asset tends to stop rising due to supply.
Market Sentiment – The overall attitude of investors toward a particular asset or market.
Price Action – The movement of an asset's price over time without relying on indicators.
Breakout – When an asset's price moves beyond a support or resistance level.
Pullback – A temporary reversal in the price direction of an asset within a trend.
Consolidation – A period where the asset's price moves within a narrow range.

"""),
        
        TermsModel(title: "4. Charts and Indicators", photo: "t4", information: """

Candlestick Chart – A chart that displays price movements using candles to show open, close, high, and low prices.
Line Chart – A simple chart that connects closing prices with a continuous line.
Bar Chart – A chart that displays price ranges with vertical lines and horizontal ticks.
Moving Average (MA) – A technical indicator that smooths out price data to identify trends.
Relative Strength Index (RSI) – A momentum oscillator that measures the speed of price changes.
Moving Average Convergence Divergence (MACD) – An indicator used to identify trend direction and momentum.
Bollinger Bands – A volatility indicator that uses a moving average with upper and lower bands.
Fibonacci Retracement – A tool used to identify potential support and resistance levels.
Volume Indicator – A tool that shows the number of assets traded over a certain period.
Stochastic Oscillator – A momentum indicator comparing a closing price to a price range.

"""),
        
        TermsModel(title: "5. Risk Management", photo: "t5", information: """

Diversification – Spreading investments across different assets to reduce risk.
Stop-Loss – A pre-set level at which a trade will automatically close to limit losses.
Take-Profit – A pre-set level at which a trade will automatically close to lock in profits.
Risk-Reward Ratio – A comparison of potential profit to potential loss in a trade.
Position Sizing – Determining how much to invest in a particular trade.
Drawdown – The reduction in equity from a peak to a trough.
Capital Allocation – Distributing available capital among different investments.
Money Management – Techniques to manage trading capital effectively.
Margin Call – A broker's demand for additional funds to maintain open positions.

"""),
        
    ]
}
