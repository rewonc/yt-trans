ytControllers = angular.module 'ytControllers', []

ytControllers.controller 'VideosIndexCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  $scope.orderProp = 'views'
  $scope.language = 'japanese'
  # needs to update with the top video or something. or pull from URL
]

ytControllers.controller 'VideosShowCtrl', ['$scope', '$youtube', 'Video', 'Snippet', '$interval', 'VideosShowInitializer', ($scope, $youtube, Video, Snippet, $interval, VideosShowInitializer) ->
  $scope.videos = Video.query()
  $scope.video = VideosShowInitializer[0]
  $scope.snippets = VideosShowInitializer[1]
  console.log $scope.snippets
  $scope.playerVars = {
    cc_load_policy: 0,
    iv_load_policy: 3,
    origin: 'http://localhost:3000',
    rel: 0,
    showinfo:0
  }
  $scope.code = $scope.video.code
  $scope.timer = 0

  $scope.timerFn = (event) -> 
    current = event.offsetX
    max = event.currentTarget.clientWidth
    percentage = Math.round((current / max) * 1000)/1000
    $scope.timer = percentage * $scope.duration
    $youtube.player.seekTo($scope.timer, true)
  $scope.timeWatchStop = () ->
    if angular.isDefined($scope.timeWatch) 
        $interval.cancel($scope.timeWatch);
        $scope.timeWatch = undefined;
  $scope.timeWatchStart = () ->
    if angular.isDefined($scope.timeWatch) 
      return;
    else
      $scope.timeWatch = $interval () ->
        #get the time info from video, and then propogate
        $scope.timer = $youtube.player.getCurrentTime()
      , 200
  $scope.$on 'youtube.player.ready', () ->
    $youtube.player.playVideo()
    $scope.duration = $youtube.player.getDuration()
  $scope.$on 'youtube.player.ended', () ->
    console.log 'ended'
    $scope.timeWatchStop()
  $scope.$on 'youtube.player.playing', () ->
    console.log 'playing'
    $scope.timeWatchStart()
  $scope.$on 'youtube.player.paused', () ->
    console.log 'paused'
    $scope.timeWatchStop()
  $scope.$on 'youtube.player.buffering', () ->
    console.log 'buffering'
    $scope.timeWatchStop()
  $scope.$on 'youtube.player.queued', () ->
    console.log 'queued'
]

