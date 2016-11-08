
/*
Simple EA - Auto

AC+MA+RSI above 50 BUY / below 50 Sell
Close => lot 1.0 + orderProfit >= 30
Max TRades = 1
Recommended balance $500 ( pre $1000)
close all trades friday start from 12:00  / Mondays don't trade
Add Stoploss => Profit > $10 => No lossing trade

*/



//+------------------------------------------------------------------+
//|                                                   simple_eas.mq4 |
//|                        Copyright 2016, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict





//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
      
      
      
      
      
      // Open Trades Signals
      Comment(
               orders_details() 
       
      );
      
      


   
  }
  
  
  string orders_details()
  {
      string out = "";
      
      for (int i = OrdersTotal(); i > -1; i--)
      {
         if (OrderSelect(i,SELECT_BY_POS))
         {       
            out += "\nOrder " + IntegerToString(i) + ": " +  Order  // TimeToStr(OrderOpenTime());   //DoubleToStr(OrderProfit());      
         }
         
        
         
      }
      
   // return "\nOrder1: 12.00\nOrder2: 13.00";
   return out;
  }
  
//+------------------------------------------------------------------+

/*
for (int i = OrdersTotal(); i > -1; i--)
   {
     if (OrderSelect(i,SELECT_BY_POS))
     {
        if (OrderProfit() < -0.30)
        {
            if (OrderType() == OP_BUY)
            {
             bool result = OrderClose( OrderTicket(), OrderLots(), MarketInfo(OrderSymbol(), MODE_BID), 3, Blue);
             ot=0;
            }
            else {
             bool result = OrderClose( OrderTicket(), OrderLots(), MarketInfo(OrderSymbol(), MODE_ASK), 3, Blue);
             ot =1;
            } 
        }   


*/