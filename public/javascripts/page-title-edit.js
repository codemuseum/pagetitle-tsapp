var PageTitleEdit = {
  init: function() {
    this.titleHeaders = $$('.app-page-title h1');
    $$('.app-page-title a').each(function(el) { el.observe('click', function() { $('page_title').focus(); }); });
    $('page_title').observe('change', PageTitleEdit.updateTitleHeader);
  },
  updateTitleHeader: function(event) {
    var pageTitleEl = $('page_title');
    PageTitleEdit.titleHeaders.each(function (el) {el.update(pageTitleEl.value)});
  }
}
PageTitleEdit.init();