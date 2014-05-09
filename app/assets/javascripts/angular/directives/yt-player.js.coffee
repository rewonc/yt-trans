app.directive 'ytPlayer', ($sce) ->
  {
    restrict: 'EA',
    scope: { code:'=' },
    replace: true,
    template: '<div style="height:400px;"><iframe style="overflow:hidden;height:100%;width:100%" width="100%" height="100%" src="{{url}}" frameborder="0" allowfullscreen></iframe></div>',
    link: (scope) ->
        console.log 'here'
        scope.$watch 'code', (newVal) ->
          if newVal
            scope.url = $sce.trustAsResourceUrl "http://www.youtube.com/embed/" + newVal
  }