# 工厂方法模式(Factory Method Pattern)

## 一.什么是工厂方法模式：
定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。
它一般包含一个“工厂”对象来生产一系列的产品。这个“工厂”生产的对象都是有关联的----或者有相同的父类，或者实现相同的protocol。

## 二.工厂方法模式的优点：
 1.良好的封装性，代码结构清晰
 2.扩展性非常优秀
 3.屏蔽产品类
 4.降低耦合性



## 三.工厂方法模式的使用场景：
 1.在所有需要生成对象的地方都可以使用，但是需要慎重地考虑是否需要增加一个工厂类进行管理，增加代码的复杂度。

2.需要灵活的，可扩展的框架时，可以考虑采用工厂方法模式。例如需要设计一个连接邮件服务器的框架，有三种网络协议可供选择：POP3,IMAP,HTTP。我们就可以把这三种连接方法作为产品类，然后定义一个工厂方法，按照不同的传入条件，选择不同的连接方式。

3.工厂方法可以用在异构项目中。

4.可以使用在测试驱动开发的框架下。


## 四.Swift实现工厂方法模式：
世界上有三种肤色的人：白人，黑人，黄人。这三种人都有一个共同的属性：人。它们有一个共同的父类。在有些时候，我们可能需要根据不同情况来创建三种肤色人的对象。这个时候我们就可以创建一个工厂类来创建对象：

首先，我们先定义好“人”类：
```
class People {
	func printColor(){
		
	}
}

class WhitePeople: People {
	override func printColor() {
		print("White Color")
	}
}

class YellowPeople: People {
	override func printColor() {
		print("Yellow Color")
	}
}

class BlackPeople: People {
	override func printColor() {
		print("Black Color")
	}
}
```

然后，我们定义一个工厂类:
```
enum PeopleColor {
	case white
	case yellow
	case black
}

class CreatePeopleFactory {
	static func productPeople(for color: PeopleColor) -> People{
		switch color {
		case .white:
			return WhitePeople()
		case .yellow:
			return YellowPeople()
		case .black:
			return BlackPeople()
		}
	}
}
```
现在，我们便可以使用工厂方法根据需要创建出不同的人了：
```
let people = CreatePeopleFactory.productPeople(for: .white)
		people.printColor()
```
