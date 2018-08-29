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

Have fun!