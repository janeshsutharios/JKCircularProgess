# JKCircularProgess
JKCircularProgess for showing circular animated progress


<p align="center"><img src="https://media.giphy.com/media/3ohc0UXM2jmMctzClq/giphy.gif" width="360" height="720"/></p>

## Features
 - You can select half circle, full circle or as per your use case angle.
 - It's customisable using **`@IBInspectable`**
 
 
You can select Line width, Animation duration, Track color & circleColor from the Attribute inspector

<p align="center"><img src="https://image.ibb.co/j4SHHR/Screen_Shot_2018_01_16_at_5_48_12_PM.png" width="600" height="230"/></p>

 - Or can also select programetically as below -

## Example usage 

```
@IBOutlet weak var customJKView: JKCircleView!    
    
    override func viewDidLoad() {
        customJKView.animationDuration = 3
        customJKView.lineWidth = 10
        customJKView.isToRemoveLayerAfterCompletion = true
    }
    @IBAction func tapsDrawCircle(_ sender: UIButton) {
        addFullCircleView()
    }
    ///angle = 1 is 360 degree, angle = 0.5 is 180 degree --set as your use case 0 < angle <1
    func addFullCircleView() {
        customJKView.animateCircle(angle: 1)

    }
    
```
