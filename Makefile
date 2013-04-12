test:
  mocha --ui bdd -R doc --compilers coffee:coffee-script CH6-3.coffee
  mocha --ui tdd -R list --compilers coffee:coffee-script CH6-3.coffee


.PHONY: test