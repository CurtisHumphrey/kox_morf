# KOX_Morf

KOX_Morf is a [knockout.js](http://knockoutjs.com/) [custom binding](http://knockoutjs.com/documentation/custom-bindings.html) that allow an easy way to added [Morf](https://github.com/joelambert/morf) based CSS3 transitions with all of Morf's custom easing functions.

# Requirements
- Knockoutjs

# How do I use it?

## Binding
```html
<button data-bind="morf: effect">Click Me</button>
```

## View Model
The `effect` observable needs to be either `false` (no effect) or defined as listed below.  Update the observable will cause the animation to change, neat!

### CoffeeScript
```coffeescript
## in coffeescript
effect = ko.observable
	# New CSS State 
	css:
		'color': '#F3F3F3'
	# Additional Parameters as listed in morf
	parameters:
		duration: '300ms'
    timingFunction: 'ease-out'
    callback: callback if callback
```

### Javascript
```javascript
// in javascript
effect = ko.observable {
	// New CSS State
	css: {
		'color': '#F3F3F3'
	},
	// Additional Parameters as listed in morf
	parameters: {
		duration: '300ms',
    timingFunction: 'ease-out',
    callback: callback ? callback : void 0
	}
}
```

# Repo Files

## Production files
- morf.js
- kox_morf.js

## Other files
were used to develop or whatnot

# License
KOX_Morf is Copyright © 2013 Curtis M. Humphrey and is licensed under the terms of the MIT License.