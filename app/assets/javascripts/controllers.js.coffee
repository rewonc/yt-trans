ytControllers = angular.module 'ytControllers', []

ytControllers.controller 'VideosIndexCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  console.log $scope.videos
  $scope.orderProp = '-votes'
  $scope.language = 'japanese'
  $scope.Math = window.Math;
  # needs to update with the top video or something. or pull from URL
]

ytControllers.controller 'VideosShowCtrl', ['$scope', '$youtube', 'Video', 'Comment','$interval', 'VideosShowInitializer', ($scope, $youtube, Video, Comment, $interval, VideosShowInitializer) ->
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
  #should have a switch that tells whether there's one or not. ng-hide. tells whether to show new input or old select. 
  $scope.hasSnippet = false
  $scope.currentSnippet = []
  $scope.transcription = ''
  $scope.translation = ''
  $scope.annotation = ''

  $scope.code = $scope.video.code
  $scope.timer = 0
  $scope.isCurrentSnippet = (id) ->
    if id == $scope.currentSnippet[0].id
      return true
    else
      return false
  $scope.checkSnippet = () ->
    $scope.currentSnippet = []
    $scope.hasSnippet = false
    $scope.currentSnippet.push(snippet) for snippet in $scope.snippets when snippet.starttime <= $scope.timer && snippet.endtime >= $scope.timer
    if $scope.currentSnippet.length > 0
      $scope.hasSnippet = true
  $scope.snippetPlay = (event, time) ->
    event.stopPropagation()
    $scope.timer = time
    $youtube.player.seekTo($scope.timer, true)
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
        $scope.checkSnippet()
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

