# 适配器模式(Adapter Pattern)

## 一.什么是适配器模式：
将一个类的接口变换成客户端所期待的另一种接口，从而使原本因接口不匹配而无法在一起工作的两个类能够在一起工作。

举个例子：一些老的电视机通过AV线的接口传递声音和视频，而现在电视盒子几乎都是用HDMI线来传输音视频信号的。这种情况就会导致这些老的电视机无法直接使用电视盒子。这个问题该如何解决呢？买新电视？可是电视那么贵，会不会很浪费钱呢？其实，可以买一根转接线，一根将HDMI接口信号转换成AV接口信号的转接线就可以。这根转接线就是一个适配器的角色。


## 二.适配器模式的三个角色：
 1.Target目标角色
 2.Adaptee 源角色
3.Adapter 适配器角色



## 三.适配器模式的适用情况：
 1.组建需要与程序中已存在的对象共享相似的东西（电视盒子输出的音视频信号和电视机接收的音视频信号）
 2.组建提供的接口在应用程序中不兼容（HDMI接口和AV接口）
3.组建的源代码不能（不应该）被修改
4.组建需要集成到程序中


## 四.Swift实现适配器模式的方式：
适配器模式让我们从外引进的对象与程序中已有的对象能够很好的保持兼容。

Swift 主要有两种实现方法：Swift Extension 和 创建适配器类

```
protocol Jumping {
	func jump()
}
```


```
class Dog: Jumping {
	func jump() {
		print("Dog Jumps")
	}
}


class Cat: Jumping {
	func jump() {
		print("Cat Jumps")
	}
}
```
我们的程序中有一个Dog 类和一个Cat 类，他们都有jump()方法。假如我们集成的第三方框架中有一个引入的类：
```
class Frog{
		func leap(){
				print("Frog Leaps")
		}
}
```
这个Frog类有一个leap()方法。假如这个集成的类和我们已有的类在一些情况下需要做相同的操作，比如：
 ```
 let dog = Dog()
 let cat = Cat()
 let frog = Frog()
var animals: [Jumping] = [dog, cat]
func jumpAll(animals: [Jumping], frog: Frog = nil) {
	for animal in animals {
		animal.jump()
	}
	if let frog = frog {
		frog.leap()
	}
}
```
这个时候我们该如何让它们更好的兼容呢？这个时候我们可以使用适配器模式来解决这个问题。
### 1.Extension 方法：
```
//方法1:给Frog类 添加扩展
extension  Frog:Jumping{
		func jump() {
				leap()
		}
}
```
我们可以给引进的类使用extension添加扩展,在不修改原类的基础上给原来的类新增功能。

之后，我们便可以这样:
```
let dog = Dog()
let cat = Cat()
let frog = Frog()
let animals : [Jumping] = [dog,cat,frog]

jumpAll(animals: animals);
			 
func jumpAll(animals: [Jumping]){
				for animal in animals {
						animal.jump()
				}
		}
```

### 2.创建适配器类：
```
//方法2:新建FrogAdapter类
class FrogAdapter: Jumping {
		private let frog = Frog()
		func jump() {
				frog.leap()
		}
}
```
然后:
```
let dog = Dog()
let cat = Cat()
let frogAdapter = FrogAdapter()
let animals : [Jumping] = [dog,cat,frogAdapter]

jumpAll(animals: animals);
```
创建一个适配器类，可以更好的对Frog类进行封装，避免了直接调用Frog类，使我们更好的控制调用者的操作。比较适合一些稍微复杂的功能。



