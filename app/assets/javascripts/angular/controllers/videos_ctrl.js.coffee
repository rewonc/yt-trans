app.controller 'VideosCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  $scope.loadVideo = () -> alert('hi')
  $scope.code = 'Yn-oemgzlEU'
]