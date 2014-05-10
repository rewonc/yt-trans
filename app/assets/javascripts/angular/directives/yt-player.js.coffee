app.directive 'ytPlayer', ($sce) ->
  {
    restrict: 'A',
    scope: { code:'=' },
    replace: true,
    templateUrl: "yt-player.html",
    link: (scope) ->
        console.log 'here'
        scope.$watch 'code', (newVal) ->
          if newVal
            scope.url = $sce.trustAsResourceUrl "http://www.youtube.com/embed/" + newVal
  }