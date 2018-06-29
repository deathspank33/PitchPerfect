//
//  ViewController.swift
//  PitchPerfectTwo
//
//  Created by Troy Davis on 6/27/18.
//  Copyright © 2018 Troy Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: RECORD BUTTON LABEL (TEXT)
    @IBOutlet weak var recordingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view appeared")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: RECORDING BUTTON
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        print("record btn was pressed")
    }
    
    //MARK: STOP RECORDING BUTTON
    @IBAction func stopRecording(_ sender: Any) {
        print("Stop Pressed")
    }
    
}

