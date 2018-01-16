import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

}

//       let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: (frame.size.width - 10)/2, startAngle: 0.0, endAngle: CGFloat(.pi * 2.0), clockwise: true)

/*
 import UIKit
 @IBDesignable
 class JKCircleView: UIView,CAAnimationDelegate {
 @IBInspectable public var lineWidth: CGFloat = 2.0
 @IBInspectable public var animationDuration: CGFloat = 2.0
 var isToRepeat = false
 var isToRemoveLayerAfterCompletion = false
 var circleLayer = CAShapeLayer()

 override func awakeFromNib() {
 print(self.frame)
 }

 func createLayer() {

 // create my track layer
 let trackLayer = CAShapeLayer()

 //let circularPath = UIBezierPath(arcCenter: CGPoint(x: self.frame.width/2, y: self.frame.height/2) , radius: self.frame.width/2, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)

 let circularPath = UIBezierPath(arcCenter: CGPoint(x: self.frame.width/2, y: self.frame.height/2) , radius: self.frame.width/2, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
 //
 trackLayer.path = circularPath.cgPath

 trackLayer.strokeColor = UIColor.black.cgColor
 trackLayer.lineWidth = lineWidth
 trackLayer.fillColor = UIColor.clear.cgColor
 trackLayer.lineCap = kCALineCapRound
 layer.addSublayer(trackLayer)

 circleLayer.path = circularPath.cgPath

 circleLayer.strokeColor = UIColor.red.cgColor
 circleLayer.lineWidth = lineWidth
 circleLayer.fillColor = UIColor.clear.cgColor
 circleLayer.lineCap = kCALineCapRound

 circleLayer.strokeEnd = 0

 layer.addSublayer(circleLayer)
 }

 func animateCircle(angle: CGFloat) {
 createLayer()
 // We want to animate the strokeEnd property of the circleLayer
 let animation = CABasicAnimation(keyPath: "strokeEnd")

 // Set the animation duration appropriately
 animation.duration = CFTimeInterval(animationDuration)
 animation.delegate = self

 // Animate from 0 (no circle) to 1 (full circle)
 animation.fromValue = 0
 animation.toValue = angle


 // Do a linear animation (i.e The speed of the animation stays the same)
 animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)

 // Set the circleLayer's strokeEnd property to 1.0 now so that it's the
 // Right value when the animation ends
 circleLayer.strokeEnd = angle

 // Do the actual animation
 circleLayer.add(animation, forKey: "animateCircle")

 }
 func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
 // print("animationDidStop")
 if isToRepeat  {
 circleLayer.strokeEnd = 0
 animateCircle(angle: 0)
 return
 }
 if isToRemoveLayerAfterCompletion {
 circleLayer.removeFromSuperlayer()//comment if you dont wan't to remove.
 }

 }
 func animationDidStart(_ anim: CAAnimation) {
 // print("animationDidStart")

 }
 override func didMoveToSuperview() {
 //layer.sublayers?.removeAll()

 }
 }

 */
