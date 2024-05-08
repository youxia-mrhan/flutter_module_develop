<p align="center">
  <a href="README_CN.md">中文文档</a>
</p>

# Preface

Current case Flutter SDK version: **3.13.2**

Currently Flutter is in one project, **creating different directories** for **module development**. When I was doing **Android native development**, I found that on the native side, **each module can be run independently* *Get up, the inspiration comes from this;

<br/>


# 1、Create root directory

Create a new empty folder, I named it `flutter_module_develop`;

<img src="img/01.png" alt="01">


# 2、Create module

Just create a Flutter project in the `flutter_module_develop` folder;
  
### 2.1、Create main module

It is named **app**. I named it according to the native Android one. You can customize this name;

![02.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/7455e719f48d49e8aad33c3cf21ebeee~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1610&h=1234&s=143302&e=png&b=3e4042)


### 2.2、Create submodule

Named **home**, **order**, **personal**, **common**;

![03.png](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5382bae175dd4394a7751bf3e1aaae28~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1604&h=1238&s=145634&e=png&b=3e4042)

![04.png](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/b5c83f2083cd4a7abf2c512e14c0688f~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1604&h=1238&s=145147&e=png&b=3e4042)

![05.png](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8dbaf389dcf946ebb24341a1f1ee9695~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1604&h=1238&s=145584&e=png&b=3f4142)

![06.png](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/9872629aa8c64843b14d26775e601f1e~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1604&h=1238&s=146175&e=png&b=3e4042)

![07.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/c4d37c12b09844719126a1d892a89c19~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1532&h=816&s=105400&e=png&b=f3f5f6)

# 3.1、Create startup files for each module
Use the development tool to open the `flutter_module_develop` directory. I am using **AndroidStudio**, and then find the file with **entry function**. What is the **entry function**? That's it, so that each module can be started independently, which is the core of module-by-module development.

```js
void main() {
  runApp(...);
}
```

![08.png](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/306bfc6ccdd54366af391632639b83e3~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=2678&h=636&s=111148&e=png&b=282828)

![09.png](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/30f2b3e0ce8b4fe88563da3111bc5507~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=2074&h=1346&s=113142&e=png&b=3d3f41)

![10.png](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/0c77787327fa41538230259caf365a9c~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=2074&h=1346&s=259234&e=png&b=3d3f41)

![11.png](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/29544894e4414d6ea2277dcd4a8b7f72~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=2074&h=1346&s=454792&e=png&b=3d3f40)

All modules follow the same creation process and final effect.

![12.png](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/3f86ae0b251543c2be68f05a526db8fa~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=2074&h=1594&s=214441&e=png&b=3e4042)

# 4、Create dependencies

### 4.1、Add relevant dependent libraries in pubspec.yaml of the common module

I added the `provider` library here;

![13.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5849fbd244724445b3b4e17e1936d7bb~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1106&h=436&s=53084&e=png&b=2b2b2b)

### 4.2、Add the common module to pubspec.yaml of home, order, and personal

![14.png](https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/100687afa29c49d3851919db92ab4f74~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=788&h=288&s=23646&e=png&b=2b2b2b)

### 4.3、Add the home, order, and personal modules to the pubspec.yaml of the app module

![15.png](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5be8a734994a4a4f8e44fc8caec2f81a~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1106&h=454&s=43900&e=png&b=2b2b2b)

# 5、Provider

Declare **status** in the **common** module so that all modules can find it;

```js
import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int count = 0;

  void compute() {
    count++;
    notifyListeners();
  }
}
```

# 6、Question

### 6.1、Static resources cannot be accessed across modules

I put **pictures** and **fonts** in the common module, thinking that other modules could also reference them, but it turned out that **not possible**;

Because it finds the package path of the startup module by default, and the app module is currently started, so it cannot find the local resource files under the common module;

But I found the **solution direction**. Many of these **Widgets** that load local resources provide the package attribute. Unfortunately, I **did not find the correct way to use it**.

![17.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/2c6b7944b2944164a323af2358323918~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1404&h=976&s=193530&e=png&b=2b2b2b)

![18.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/0d4b0c0c8be54e18974ecb5c7412d987~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1404&h=1716&s=286140&e=png&b=2b2b2b)

# 7、Precautions

7.1、The dependent modules **change**, and **all associated** modules need to `pub get` again, otherwise the **updated content** will not be found;

7.2、When referencing objects that depend on modules, the **compiler does not prompt** and you need to **manually import the package** (import 'xx/xx.dart'), but fortunately there is a **prompt** when importing the package;

7.3、Android native **gradle** requires **unified version**, **not just Android native**, or **all module native platform** build tools require **unified version**, otherwise Something could go wrong;

7.4、For the Flutter project, the disk space occupied by the computer will become larger, reaching 2.5 times. This should not be a problem, unless it is a large game project with tens of gigabytes. Even if it is doubled, it can be solved by adding a hard disk;

# Summarize

### Project dependency graph

![16.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/387ce0e2e7f14363b876429720f4e55e~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1128&h=1002&s=72624&e=png&b=ffffff)

### renderings

![demo.gif](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/06a442dc265047ca930374c978ad8eb9~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=372&h=648&s=932369&e=gif&f=325&b=fdf5fe)

### Packing volume

The newly created **single** Flutter project has a packaged volume of `17.4MB`, while the packaged volume of the Flutter project containing five modules in the case is `17.9MB`, which is quite reasonable.

![21.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/f81a36f48d5e4cfdb8b16867e0175a84~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1202&h=232&s=32965&e=png&b=2c2c2c)

![22.png](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/c5cb5964f2aa495eacce2045d412f31f~tplv-k3u1fbpfcp-jj-mark:0:0:0:0:q75.image#?w=1208&h=358&s=57162&e=png&b=2c2c2c)
