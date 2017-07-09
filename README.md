# ios-viewctl-modal-anim-swift

This is a swift project

IOS system default only up and down the switch animation, I have a custom left and right to switch the animation


---
![screenshot](https://raw.githubusercontent.com/CaiJingLong/ios-viewctl-modal-anim/master/img/screenshot.gif "screenshot")

---

## install
copy source path to your project

## use

### present next controller
in first controller 

    self.presentModal(duration: 0.3, anim: .rightToLeft, destinationViewContoller: self.destination)
use the function can from right to left

### dismiss second controller
    dismissModal(duration: 0.3, anim: .leftToRight, destinationView: (self.presentingViewController?.view)!)

### in the seque
     override func perform() {
        self.source.presentModal(duration: 0.3, anim: .rightToLeft, destinationViewContoller: self.destination)
    }

## LICENSE
Copyright 2017 JingLong Cai

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.