# GeneicTableView
## Objective-C Generics Example

This repository is an example project for using generics in Objective-C. The `ViewController` class is generic, allowing you to create it for a specific type, as follows:

```Objective-C
ViewController <NSString *> *stringsViewController = [[ViewController alloc] init];
```

The view controller has an `items` array containing objects of the same generic type, and displays them in a `UITableView`.

This repository is from [a CocoaHeads talk](https://speakerdeck.com/slaunchaman/teaching-an-old-dog-new-tricks-objective-c-in-the-age-of-swift) I gave, entitled “Teaching an Old Dog New Tricks: Objective-C in the Age of Swift.”