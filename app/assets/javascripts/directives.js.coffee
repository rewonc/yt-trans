ytDirectives = angular.module 'ytDirectives', []

ytDirectives.directive 'ytPlayer', ($sce) ->
  {
    restrict: 'EA',
    scope: { code: '=code' },  #do not understand this
    replace: true,
    templateUrl: "yt-player.html",
    link: (scope, element, attrs) ->
        scope.var2 = 'hi'
        console.log scope
        element.find('#button1').click () -> alert('howdy')
        #can insert the event listeners here...
        scope.$watch 'code', (newVal) ->
          if newVal
            scope.url = $sce.trustAsResourceUrl "http://www.youtube.com/embed/" + newVal
            
  }