ytControllers = angular.module 'ytControllers', []

ytControllers.controller 'VideosIndexCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  $scope.orderProp = 'views'
  $scope.language = 'japanese'
  # needs to update with the top video or something. or pull from URL
]

ytControllers.controller 'VideosShowCtrl', ['$scope', 'Video', 'VideosShowInitializer', ($scope, Video, VideosShowInitializer) ->
  $scope.videos = Video.query()
  $scope.video = VideosShowInitializer
  $scope.code = VideosShowInitializer.name
  $scope.timer = 0.00
  $scope.timerFn = (event) -> 
    console.log 'hi'
    current = event.offsetX
    max = event.currentTarget.clientWidth
    percentage = Math.round((current / max) * 1000)/1000
    $scope.timer = percentage
]

