app.directive 'ytPlayer', ($sce) ->
  {
    restrict: 'A',
    scope: { code:'=' },
    replace: true,
    templateUrl: "yt-player.html",
    link: (scope, element, attrs) ->
        var2 = 'hi'
        console.log scope
        element.find('#button1').click () -> alert(var2)
        scope.$watch 'code', (newVal) ->
          if newVal
            scope.url = $sce.trustAsResourceUrl "http://www.youtube.com/embed/" + newVal
            
  }