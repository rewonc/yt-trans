app.directive 'ytPlayer', ($sce) ->
  {
    restrict: 'EA',
    scope: { vid: '=hello' },  #do not understand this
    replace: true,
    templateUrl: "yt-player.html",
    link: (scope, element, attrs) ->
        scope.var2 = 'hi'
        console.log scope
        element.find('#button1').click () -> alert('howdy')
        scope.$watch 'code', (newVal) ->
          if newVal
            scope.url = $sce.trustAsResourceUrl "http://www.youtube.com/embed/" + newVal
            
  }