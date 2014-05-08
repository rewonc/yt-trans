App.controller 'VideosCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
]