app.controller 'VideosCtrl', ['$scope', 'Video', 'youtubePlayerApi', ($scope, Video, youtubePlayerApi) ->
  $scope.videos = Video.query()
  $scope.loadVideo = (name) -> 
    $scope.yturl = name
  $scope.yturl = 'Yn-oemgzlEU'
  # needs to update with the top video or something. or pull from URL
]

