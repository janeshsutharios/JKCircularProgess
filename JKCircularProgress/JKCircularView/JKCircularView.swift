import UIKit
@IBDesignable
public class JKCircleView: UIView {
    @IBInspectable public var lineWidth: CGFloat = 2.0
    @IBInspectable public var animationDuration: CGFloat = 2.0
    @IBInspectable public var trackColor: UIColor = .blue
    @IBInspectable public var circleColor: UIColor = .green
    public var isToRemoveLayerAfterCompletion = false
    public var circleLayer = CAShapeLayer()

    public  func createLayer() {
        let trackLayer = CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0),
                                        radius: (frame.size.width )/2, startAngle: 0.0, endAngle: CGFloat(.pi * 2.0),
                                        clockwise: true)
        trackLayer.path = circularPath.cgPath
        trackLayer.strokeColor = trackColor.cgColor
        trackLayer.lineWidth = lineWidth
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = kCALineCapRound

        layer.sublayers?.removeAll()
        layer.addSublayer(trackLayer)
        circleLayer.path = circularPath.cgPath
        circleLayer.strokeColor = circleColor.cgColor
        circleLayer.lineWidth = lineWidth
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineCap = kCALineCapRound
        circleLayer.strokeEnd = 0
        layer.addSublayer(circleLayer)
    }

   public func animateCircle(angle: CGFloat) {

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
}
//MARK: CABasicAnimation delegate
extension JKCircleView: CAAnimationDelegate {

    public func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if isToRemoveLayerAfterCompletion {
            circleLayer.removeFromSuperlayer()//comment if you dont wan't to remove.
        }
    }

    public func animationDidStart(_ anim: CAAnimation) {
        // print("animationDidStart")
    }
}
