###
  @author Curtis M. Humphrey, Ph.D.
  
  The files adds a KO binding for Morf
      
  Dependence (from global namespace):
    ko - knockoutjs
    Morf - from Morf (https://github.com/joelambert/morf)
      
  Public API, Fired Events, or Exports
    export on ko as a new binding e.g., data-bind="morf: value"
      where value = css: "", parameters: "" from morf documentation
    
###
define (require) ->
  ko = require 'knockout'
  Morf = require 'morf'
  
  has_morf = '__ko_has_morf'
  ko.bindingHandlers.morf =   
    # This will be called once when the binding is first applied to an element,
    # and again whenever the associated observable changes value.
    # Update the DOM element based on the supplied values here.
    update: (element, valueAccessor, allBindingsAccessor, viewModel, bindingContext) ->
      element[has_morf] = false
      
      ##valueAccessor should be object {css {}, parameters {}}
      value = ko.utils.unwrapObservable(valueAccessor());
      if value
        element[has_morf] = Morf.transition element, value.css, value.parameters