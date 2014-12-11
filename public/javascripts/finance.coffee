toggleForm = (target) ->
  type = target.data("type")
  klass = target.attr("class")
  (if type is "variant" and klass is "finance-calculator" then drawVariants(target) else "")
  form = "#" + type + "-input"
  $(form).toggleClass "hidden"

getControl = (type) ->
  $ "a.finance-calculator[data-type=\"" + type + "\"]"

changeModelValue = (target) ->
  value = target.data("value")
  control = getControl("model")
  control.text value

changeVariantValue = (target) ->
  variants = target.data("variants")
  control = getControl("variant")
  control.text (if variants instanceof Array then variants[0] else variants)
  control.attr "data-value", variants

drawVariant = (variant) ->
  $ul = $("#variant-input ul")
  $ul.append "<li class=\"list-group-item finance-calculator-variant-input\" data-type=\"vaiant\" data-value=\"" + variant + "\">" + variant + "</li>"

drawVariants = (target) ->
  variants = target.data("value")
  variants = variants.split(",")
  $ul = $("#variant-input ul")
  $ul.find("li").remove()
  _.each variants, drawVariant
  variantInputListener()

variantInputListener = ->
  $(".finance-calculator-variant-input").on "click", (event) ->
    event.preventDefault()
    updateEstimate()
    target = $($(event.target)[0])
    variant = target.data("value")
    control = getControl("variant")
    control.text variant
    $("#variant-input").toggleClass "hidden"


minMaxNumber = (min, max) ->
  numberWithCommas Math.floor(Math.random() * max) + min

numberWithCommas = (number) ->
  number.toString().replace /\B(?=(\d{3})+(?!\d))/g, ","

updateEstimate = ->
  week = minMaxNumber(400, 1500)
  total = minMaxNumber(40000, 150000)
  $("#estimate-week").text "$" + week
  $("#estimate-week-old").text ""
  $("#estimate-total").text "$" + total
  $("#estimate-total-old").text ""

financeCalcListener = ->
  $(".finance-calculator").on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    toggleForm target

financeCalcMobileInputListener = ->
  $(".finance-calculator-model-input").on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    changeModelValue target
    changeVariantValue target
    updateEstimate()
    toggleForm target

financeCalcCloseListener = ->
  $(".finance-calculator-close").on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    toggleForm target

suburbSearchListener = ->
  $("#suburb-search").on "focus", (event) ->
    data = []
    value = 1000
    _.times 7000, (n) ->
      value++
      data.push value.toString()

    $("#suburb-search").typeahead
      source: data
      items: 15

suburbSearchInputSubmitListener = ->
  $("#suburb-input-submit").on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    suburb = $("#suburb-search").val()
    control = getControl("suburb")
    control.text suburb
    updateEstimate()
    toggleForm target

financeCalcUserInputListener = ->
  $(".finance-calculator-use-input").on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    use = target.data("value")
    control = getControl("use")
    control.text use
    updateEstimate()
    toggleForm target

financeCalcInterestInputListener = ->
  $(".finance-calculator-interest-input").on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    interest = target.data("value")
    control = getControl("interest")
    control.text interest
    updateEstimate()
    toggleForm target

financeCalcYearsInputListener = ->
  $(".finance-calculator-years-input").on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    years = target.data("value")
    control = getControl("years")
    control.text years
    updateEstimate()
    toggleForm target

$(document).ready ->
  financeCalcListener()
  financeCalcMobileInputListener()
  financeCalcCloseListener()
  suburbSearchListener()
  suburbSearchInputSubmitListener()
  financeCalcUserInputListener()
  financeCalcInterestInputListener()
  financeCalcYearsInputListener()

# $(document).ready ->
#   toggleForm = (target) ->
#     type = target.data("type")
#     klass = target.attr("class")
#     (if type is "variant" and klass is "finance-calculator" then drawVariants(target) else "")
#     form = "#" + type + "-input"
#     $(form).toggleClass "hidden"

#   getControl = (type) ->
#     $ "a.finance-calculator[data-type=\"" + type + "\"]"

#   changeModelValue = (target) ->
#     value = target.data("value")
#     control = getControl("model")
#     control.text value

#   changeVariantValue = (target) ->
#     variants = target.data("variants")
#     control = getControl("variant")
#     control.text (if variants instanceof Array then variants[0] else variants)
#     control.attr "data-value", variants

#   drawVariant = (variant) ->
#     $ul = $("#variant-input ul")
#     $ul.append "<li class=\"list-group-item finance-calculator-variant-input\" data-type=\"vaiant\" data-value=\"" + variant + "\">" + variant + "</li>"

#   drawVariants = (target) ->
#     variants = target.data("value")
#     variants = variants.split(",")
#     $ul = $("#variant-input ul")
#     $ul.find("li").remove()
#     _.each variants, drawVariant
#     variantInputListener()

#   variantInputListener = ->
#     $(".finance-calculator-variant-input").on "click", (event) ->
#       event.preventDefault()
#       updateEstimate()
#       target = $($(event.target)[0])
#       variant = target.data("value")
#       control = getControl("variant")
#       control.text variant
#       $("#variant-input").toggleClass "hidden"


#   minMaxNumber = (min, max) ->
#     numberWithCommas Math.floor(Math.random() * max) + min

#   numberWithCommas = (number) ->
#     number.toString().replace /\B(?=(\d{3})+(?!\d))/g, ","

#   updateEstimate = ->
#     week = minMaxNumber(400, 1500)
#     total = minMaxNumber(40000, 150000)
#     $("#estimate-week").text "$" + week
#     $("#estimate-week-old").text ""
#     $("#estimate-total").text "$" + total
#     $("#estimate-total-old").text ""

#   $(".finance-calculator").on "click", (event) ->
#     event.preventDefault()
#     target = $(event.target)
#     toggleForm target

#   $(".finance-calculator-model-input").on "click", (event) ->
#     event.preventDefault()
#     target = $(event.target)
#     changeModelValue target
#     changeVariantValue target
#     updateEstimate()
#     toggleForm target

#   $(".finance-calculator-close").on "click", (event) ->
#     event.preventDefault()
#     target = $(event.target)
#     toggleForm target

#   $("#suburb-search").on "focus", (event) ->
#     data = []
#     value = 1000
#     _.times 7000, (n) ->
#       value++
#       data.push value.toString()

#     $("#suburb-search").typeahead
#       source: data
#       items: 15

#   $("#suburb-input-submit").on "click", (event) ->
#     event.preventDefault()
#     target = $(event.target)
#     suburb = $("#suburb-search").val()
#     control = getControl("suburb")
#     control.text suburb
#     updateEstimate()
#     toggleForm target

#   $(".finance-calculator-use-input").on "click", (event) ->
#     event.preventDefault()
#     target = $(event.target)
#     use = target.data("value")
#     control = getControl("use")
#     control.text use
#     updateEstimate()
#     toggleForm target

#   $(".finance-calculator-interest-input").on "click", (event) ->
#     event.preventDefault()
#     target = $(event.target)
#     interest = target.data("value")
#     control = getControl("interest")
#     control.text interest
#     updateEstimate()
#     toggleForm target

#   $(".finance-calculator-years-input").on "click", (event) ->
#     event.preventDefault()
#     target = $(event.target)
#     years = target.data("value")
#     control = getControl("years")
#     control.text years
#     updateEstimate()
#     toggleForm target

#   return