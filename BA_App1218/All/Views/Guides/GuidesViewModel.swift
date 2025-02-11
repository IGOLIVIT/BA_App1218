//
//  GuidesViewModel.swift
//  BA_App1218
//
//  Created by IGOR on 08/02/2025.
//

import SwiftUI

final class GuidesViewModel: ObservableObject {
    
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isSettings: Bool = false
    
    @Published var selectedGuide: GuidesModel?
    
    @Published var guides: [GuidesModel] = [
        
        GuidesModel(title: "How to Register and Set Up Your Quotex Account", photo: "g1", information: """

Go to the official Quotex website.
Click on the "Sign Up" button.
Enter your email, create a password, and select your currency.
Accept the terms and conditions and click "Register."
Verify your email address through the confirmation link.
Log in and complete your profile settings.

"""),
        
        GuidesModel(title: "How to Deposit and Withdraw Funds", photo: "g2", information: """

Log in to your Quotex account.
Click on the "Deposit" button.
Choose your preferred payment method.
Enter the deposit amount and confirm the transaction.
For withdrawals, go to the "Withdraw" section.
Select a withdrawal method, enter the amount, and confirm

"""),
        
        GuidesModel(title: "How to Open Your First Trade", photo: "g3", information: """

Log in to your Quotex account.
Choose an asset to trade.
Set the investment amount.
Select the trade duration (expiry time).
Click "Up" if you expect the price to rise or "Down" if you expect it to fall.
Monitor your trade and wait for it to close automatically.

"""),
        
        GuidesModel(title: "Basics of Market Analysis (Technical & Fundamental)", photo: "g4", information: """

Learn to read candlestick charts for price movements.
Use technical indicators like Moving Averages and RSI.
Follow economic news for fundamental analysis.
Identify support and resistance levels.
Combine both analyses for informed decisions.

"""),
        
        GuidesModel(title: "How to Use Trading Indicators on Quotex", photo: "g5", information: """

Open the trading platform and select an asset.
Click on the "Indicators" button.
Choose an indicator (e.g., RSI, MACD, Bollinger Bands).
Adjust the indicator settings if needed.
Use indicators to identify market trends and signals.

"""),
        
    ]
}
