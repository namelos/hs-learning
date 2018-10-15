# hs-learning

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
Visual studio code  
Use this plugin: [Haskero](https://marketplace.visualstudio.com/items?itemName=Vans.haskero)

## Setup
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

## With some option enabled you can type `:r` in REPL to reload implementation and test code
```
stack ghci --ghci-options -isrc --ghci-options -itest hs-learning:test:hs-learning-test
```

Have fun!