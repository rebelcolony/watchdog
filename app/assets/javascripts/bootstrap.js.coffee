jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  $("a.close").alert()
  $('.search-query').paranormalautocomplete()
  # $('.search-query').autocomplete
  #   source: "/search"
  #   focus: (event, ui) ->
  #     $(this).val(ui.item.label)
  #     false
  #   select: (event, ui) ->
  #     $(this).val(ui.item.label)
  #     window.location = ui.item.value
  #     false