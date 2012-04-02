# Description
=============
It's a clone of Tweetbot's progress activity indicator in the "pull to refresh" view.

It uses recognizer instead of the UIScrollView delegate to manage itself.

Great thanks to Flutt3rShy's SpinnerView and Pier-Olivier's PHRefreshTriggerView, I can't build this without your code and projects.

Feel free to send a pull request or fork it or do anything you want.
# How to use
=============
You have to drag the .h and .m files that are located in folder PHRefreshGestureRecognizer.

To use it in your project, import it first:

```
#import "PHRefreshGestureRecognizer"
```
then use it like this, attach it to an UIScrollView or UITableView as an UIGestureRecognizer:

```
[_tableView addGestureRecognizer:[[[PHRefreshGestureRecognizer alloc] initWithTarget:self action:@selector(stateChanged:)] autorelease]];
```

changes to the contentOffset of UIScrollView will pull the refresh trigger.

# Credits
=============
Thanks to [Flutt3rShy](https://github.com/Flutt3rShy/SpinnerView) for SpinnerView and [Pier-Olivier Thibault](https://github.com/pothibo/PHRefreshTriggerView) for PHRefreshTriggerView.

I also copied a lot text from the README of your project.

Of course, thanks to the creators of Tweetbot, Paul and Mark.
# Contact me
=============
Website: [http://www.dingtianran.com](http://www.dingtianran.com)

Twitter: [http://twitter.com/dingtianran](https://twitter.com/#!/dingtianran)

Email/Gtalk: [dingtianran@gmail.com](mailto:dingtianran@gmail.com)


# License - MIT
=============
Copyright (C) 2012 Ding Tianran

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.