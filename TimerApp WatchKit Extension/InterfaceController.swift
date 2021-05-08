//
//  InterfaceController.swift
//  TimerApp WatchKit Extension
//
//  Created by Yuangang Sheng on 2021/5/7.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

  @IBOutlet weak var timer: WKInterfaceTimer!
  @IBOutlet weak var startButton: WKInterfaceButton!
  
  var isTimerStarted:Bool = false
  override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
  @IBAction func startTimer() {
    isTimerStarted = !isTimerStarted
    if isTimerStarted {
      timer.setDate(Date())
      timer.start()
      startButton.setTitle("STOP")
    }else{
      timer.stop()
      startButton.setTitle("START")
    }
  }
}
