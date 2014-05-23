ytControllers = angular.module 'ytControllers', []

ytControllers.controller 'VideosCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  $scope.loadVideo = (name) -> 
    $scope.code = name
  # needs to update with the top video or something. or pull from URL
]

