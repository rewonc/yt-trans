ytDirectives = angular.module 'ytDirectives', []

ytDirectives.directive 'ytPlayer', ($sce) ->
  {
    restrict: 'EA',
    scope: { code: '=code' },  #do not understand this
    replace: true,
    templateUrl: "yt-player.html",
    link: (scope, element, attrs) ->
        scope.var2 = 'hi'
        scope.timer = 0.55
        element.find('#timerbar').click (event) -> 
          current = event.offsetX
          max = event.currentTarget.clientWidth
          percentage = current / max
          console.log scope
          ##scope.timer = percentage

        #can insert the event listeners here...
        scope.$watch 'code', (newVal) ->
          if newVal
            scope.url = $sce.trustAsResourceUrl "http://www.youtube.com/embed/" + newVal
          
  }