# Swift

* Swift Package Manger
  - Is how we write swift independently of apple machines. 
  - Swift packages are basically like libraries. 
* Servers
  - Linux.
  - Swift can run on Linux making it a good option for a server side language.
* Using Vapor
  - Vapor is a swift package (library) for creating HTTP servers in swift.


```shell
cd ~/Desktop/W08D1
mkdir Coffee
cd Coffee
swift package init --type executable
open .
swift build
swift run
swift package generate-xcodeproj
open ./Coffee.xcodeproj
```

```
swift run Coffee --hostname 0.0.0.0 --port 9000
http://localhost:9000
http://sam.local:9000
```

* localhost is my computer.
* if i'm running an app in the simulator, then that is still my local computer, so localhost is fine.
* if i'm running an app on my iphone, then it's not my local computer. no localhost.
* `LAN` Local Area Network.
* system preferences -> sharing
  - set your hostname, then access by going to `hostname.local`
  - `sam.local`

## Links

* https://swiftpack.co/
* https://stackoverflow.com/questions/31254725/transport-security-has-blocked-a-cleartext-http
* https://www.raywenderlich.com/750-an-introduction-to-the-swift-package-manager
* https://www.raywenderlich.com/890381-getting-started-with-server-side-swift-with-vapor
* http://vapor.university/?medium=article



```swift
import Vapor

let app = try Application()
let router = try app.make(Router.self) 

router.get("hello") { req in
  return "Hello, world."
}

try app.run()
```

## Open Browser Tabs

* https://ios.compass.lighthouselabs.ca/days/w08d1/activities/1016
* https://swift.org/about/#platform-support
* https://swift.org/community/#forums
* https://github.com/apple/swift-evolution
* https://www.raspberrypi.org/
* https://github.com/PureSwift/
* https://swiftpack.co/package/vapor/vapor
* https://www.google.com/search?q=promises&oq=promises&aqs=chrome..69i57j69i59j69i60l3.2580j0j1&sourceid=chrome&ie=UTF-8
* https://github.com/apple/swift-nio
* https://www.google.com/search?q=io+domain+name&oq=io+domain+name&aqs=chrome..69i57j69i64.3614j0j1&sourceid=chrome&ie=UTF-8
* https://www.google.com/search?q=io+computer+science&oq=io+computer+science&aqs=chrome..69i57j69i64.2343j0j1&sourceid=chrome&ie=UTF-8
* https://en.wikipedia.org/wiki/Input/output
* http://sam.local:8080/coffee
* https://www.google.com/search?q=set+hostname+mac&oq=set+hostname+mac&aqs=chrome..69i57.2890j0j1&sourceid=chrome&ie=UTF-8
* https://stackoverflow.com/questions/48450239/changing-hostname-and-port-with-vapor-3
* http://sam.local:4000/coffees
* https://docs.vapor.codes/3.0/mysql/getting-started/
* http://sam.local:4000/hello
* http://vapor.university/?medium=article
* https://firebase.google.com/
* https://www.google.com/search?q=firebase+vs&oq=firebase+vs&aqs=chrome..69i57.1935j0j1&sourceid=chrome&ie=UTF-8
