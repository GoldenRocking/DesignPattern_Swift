# 抽象工厂方法模式(Abstract Factory Pattern)
## 一.什么是抽象工厂方法模式：

为创建一组相关或互相依赖的对象提供一个接口，而且无需指定它们的具体类。


## 二.抽象工厂方法模式的优点：
 1.封装性：每个产品的实现类不是高层模块要关心的。它不关心对象是如何创建出来的，这些是由工厂类负责的。
2.产品族类的约束为非公开的。



## 三.抽象工厂模式的使用场景：
1.编译器无法定义创建对象类
2.类可以让其子类决定在运行期具体实例化的对象
3.封装一组相互关联的类的创建
 

## 四.Swift实现抽象工厂方法模式：
产品类：
```

protocol HumanColor {
	func getColor()
}


protocol HumanSex {
	func getSex()
}

protocol Human : HumanSex,HumanColor {
	
}

//黑人
class BlackHuman : Human {
	func getColor() {
		print("Black")
	}
	func getSex(){
		
	}
}

//男性黑人
class BlackMan: BlackHuman {
	override func getSex() {
		print("BlackMan")
	}
}

//女性黑人
class BlackFeman: BlackHuman {
	override func getSex() {
		print("BlackFeman")
	}
}

class WhiteHuman : Human {
	func getColor() {
		print("White")
	}
	
	func getSex() {
		
	}
}

class WhiteMan: WhiteHuman {
	override func getSex() {
		print("WhiteMan")
	}
}

class WhiteFeman: WhiteHuman {
	override func getSex() {
		print("WhiteFeman")
	}
}

class YellowHuman : Human {
	func getColor() {
		print("Yellow")
	}
	func getSex() {
	
	}
}

class YellowMan: YellowHuman {
   override func getSex() {
		print("YellowMan")
	}
}

class YellowFeman: YellowHuman {
   override func getSex() {
		print("YellowFeman")
	}
}
```
不管是黑人，白人还是黄种人，它们都有男人和女人。那么，在造人的时候就要分别造出男人和女人。
工厂类：
```
enum HumanType {
	case man
	case feman
}

class HumanFactory {
	
	func CreateBlackHuman() -> Human?  {
		return nil
	}
	
	func CreateWhiteHuman()-> Human? {
		return nil
	}
	func CreateYellowHuman() -> Human? {
		return nil
	}
	
	static func makeHumanFactory(type:HumanType) -> HumanFactory {
		
		switch type {
		case .man:
			return ManFactory()
		case .feman:
			return FemanFactory()
		}
	}
}

fileprivate class ManFactory : HumanFactory
{
	override func CreateBlackHuman() -> Human? {
		return BlackMan()
	}
	
	override func CreateWhiteHuman()-> Human? {
		return WhiteMan()
	}
	override func CreateYellowHuman() -> Human? {
		return YellowMan()
	}
}

fileprivate class FemanFactory : HumanFactory
{
	override func CreateBlackHuman() -> Human? {
		return BlackFeman()
	}
	
	override func CreateWhiteHuman() -> Human? {
		return WhiteFeman()
	}
	override func CreateYellowHuman() -> Human? {
		return YellowFeman()
	}
	
}
```
创建两个工厂类，分别建造男人和女人。抽象工厂类只需要根据参数返回这两个工厂类即可。
调用:
```
let fac =  HumanFactory.makeHumanFactory(type: .man)
		var human = fac.CreateBlackHuman()
		human?.getColor()
		human?.getSex()
		
		human = fac.CreateWhiteHuman()
		human?.getSex()
		human?.getColor()
		
		human = fac.CreateYellowHuman()
		human?.getSex()
		human?.getColor()
```
