---
---

top_menu_height = 0
$ ->
  $(document).ready ->
    top_menu_height = $(".aqualuks-top-menu").height()

    # scroll to top
    $("#btn-back-to-top").click (e) ->
      e.preventDefault()
      scrollTo "#aqualuks-top"

    # to stick navbar on top
    $(".aqualuks-top-menu ").stickUp()

# scroll animation
this.scrollTo = (selectors) ->
  return unless $(selectors).size()
  selector_top = $(selectors).offset().top - top_menu_height
  $("html,body").animate
