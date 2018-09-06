class Page
  controller: () =>
    $('meta[name=interests]').attr('controller')

  action: () =>
    $('meta[name=flappybird]').attr('action')

  @page = new Page
