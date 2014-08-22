ytControllers = angular.module 'ytControllers', []

ytControllers.controller 'VideosIndexCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  $scope.orderProp = 'views'
  $scope.language = 'japanese'
  # needs to update with the top video or something. or pull from URL
]

ytControllers.controller 'VideosShowCtrl', ['$scope', '$youtube', 'Video', 'VideosShowInitializer', ($scope, $youtube, Video, VideosShowInitializer) ->
  $scope.videos = Video.query()
  $scope.video = VideosShowInitializer
  $scope.playerVars = {
    controls: 0,
    cc_load_policy: 0,
    iv_load_policy: 3,
    origin: 'http://localhost:3000',
    rel: 0,
    showinfo:0
  }
  $scope.code = VideosShowInitializer.name
  $scope.timer = 0.00
  $scope.timerFn = (event) -> 
    console.log 'hi'
    current = event.offsetX
    max = event.currentTarget.clientWidth
    percentage = Math.round((current / max) * 1000)/1000
    $scope.timer = percentage
  $scope.$on 'youtube.player.ready', () ->
    $youtube.player.playVideo()
]

