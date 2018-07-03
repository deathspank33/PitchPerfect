//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Troy Davis on 5/12/18.
//  Copyright © 2018 Troy Davis. All rights reserved.
//
/* Notes from Spiros
 
 //MARK: Assignment Hint
 Hi Troy, you can introduce a new variable as this identifier called recordingAudio. When the user presses the record button the first time, you can make this a true, and the next time they press it you can make it false. In the action recordAudio() you can enable the buttons and change the labels depending on the value of recordingAudio variable.

 //MARK:Example Code
 
 @IBAction func recordAudio(_ sender: AnyObject) {
 if recordingAudio {
 stopRecording()
 } else {
 startRecording()
 }
 // toggle recording audio
 recordingAudio = !recordingAudio
 }
 
*/

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {
    
    var audioRecorder: AVAudioRecorder!
    
    //MARK: END Assignment 1.

    var recordingAudio: Bool
    
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func endAssigment () {
        if recordingAudio == true {
            recordingLabel.text = "Recording in progress."
            recordButton.isEnabled = false
            stopRecordButton.isEnabled = true
        }else{
            recordingLabel.text = "Tap to Record."
            recordButton.isEnabled = true
            stopRecordButton.isEnabled = false
        }
    }
    //MARK: Second Screen, Recording in progress
    @IBAction func recordAudio(_ sender: AnyObject) {
        //MARK: END Assignment 2.a
        recordingAudio = true
        //MARK: END Assignment 2.b
        
        //MARK: Keep below for now
        //recordingLabel.text = "Recording in progress"
        //stopRecordButton.isEnabled = true
        //recordButton.isEnabled = false
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with: .defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    //MARK: First Screen, load out Tap to Record
    @IBAction func stopRecording(_ sender: AnyObject) {
        //MARK: END Assignment 3.a
        recordingAudio = false
        //MARK: END Assignment 3.b
        
        //MARK: Keep below for now
        //recordButton.isEnabled = true
        //stopRecordButton.isEnabled = false
        //recordingLabel.text = "Tap to record"
        
        audioRecorder.stop()
        let audiosession = AVAudioSession.sharedInstance()
        try! audiosession.setActive(false)
    }

    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording" , sender: audioRecorder.url)
        }else{
            print("recording was not successful")
       }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "stopRecording" {
            let playSoundsVC = segue.destination as! playSoundsViewController
            let recordedAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recordedAudioURL
        }

    }

}


