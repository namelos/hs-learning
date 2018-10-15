# hs-learning

## Foreword
Jump to [Installation](#installation) for quick start if you don't feel like to read non technical stuff.

This repository reflects some content in [Functional Programming in Scala](https://www.manning.com/books/functional-programming-in-scala)
since it's probably one of the best book about functional programming. However, the code in this repository are written in
Haskell, which is a more pure functional programming language.

## Feedback and Contributing
Feedback and contributing are welcomed. I hope I can make this repository more like an open source project --
people can learn from it any time when then feel like doing it, instead of a series of boring sessions or workshops.   
Any suggestions are super helpful, and please point out the confusing parts and I'll try to improve it.   
You can provide feedback by open an [issue](https://github.com/namelos/hs-learning/issues/new),
or track issues in this [project](https://github.com/namelos/hs-learning/projects/1). Or you can also directly sending pull request directly if you feel like doing something.  

## Why Haskell?
When I was trying to learn Scala:
1. If I search some advanced usage of Scala on the Internet, I always ended up with a bunch of links point to Haskell code/articles.
2. Scala is a big language, it's a little bit harder to learn functional programming in Scala. Those advanced generic code are barely readable.
Instead, for learning purpose, Haskell is surprisingly easy to learn those concepts.
3. Scala is a little bit distracting, since it's OOP feature is also very powerful. This provides you a shortcut from programming functionally,
which is good for work and bad for learning.

## Installation
```
brew install ghc cabal-install stack
```
### What's these stuff?
Here's an mostly inaccurate explanation and comparison:  
ghc: Haskell compiler (compared to node.js)  
cabal-install: Package manager (compared to npm)  
stack: Build tool (compared to gulp)  
intero (you will build this in the following steps): IDE backend (compared to VSCode language server)

## Recommended editor
Visual studio code is easier to setup, it is recommended to use this at the beginning.
Use this plugin: [Haskero](https://marketplace.visualstudio.com/items?itemName=Vans.haskero)

Or you want a more powerful one: [Intellij-Haskell](https://github.com/rikvdkleij/intellij-haskell)  
Or you want a much more powerful one: [Spacemacs](http://spacemacs.org/)

## Setup
This process is quite slow for the first time, since GHC is probably the most complex compiler ever.
Feel free to do something else during installation.
```
cd hs-learning
stack setup
stack build
stack build intero
```

## Run tests
```
stack test
```

## Try your functions with ghci
```
stack ghci
```

## Try to run test interactively with ghci
```
stack ghci hs-learning:test:hs-learning-test
```

With some option enabled you can type `:r` in REPL to reload implementation and test code
```
stack ghci --ghci-options -isrc --ghci-options -itest hs-learning:test:hs-learning-test
```

Have fun!