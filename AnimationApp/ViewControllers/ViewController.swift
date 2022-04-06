//
//  ViewController.swift
//  AnimationApp
//
//  Created by EkaterinaP on 06.04.2022.
//

import Spring


class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var springButton: SpringButton!
    
    
    // MARK: - Private Properties
    private var animation = Animation.setValue()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultAnimationSettings()
    }
    
    // MARK: - IB Actions
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        let randomAnimation = animation.preset
        let randomCurve = animation.curve
        
        presetLabel.text = "preset: \(randomAnimation)"
        curveLabel.text = "curve: \(randomCurve)"
        forceLabel.text = "force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", animation.delay))"
        
        springAnimationView.animation = randomAnimation
        springAnimationView.curve = randomCurve
        springAnimationView.animate()

        springButton.setTitle("Run + \(randomAnimation)", for: .normal)
    }
    
    // MARK: - Private Methods
    private func defaultAnimationSettings() {
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", animation.delay))"
    }
}

