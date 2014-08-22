ytControllers = angular.module 'ytControllers', []

ytControllers.controller 'VideosIndexCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  $scope.orderProp = 'views'
  $scope.language = 'japanese'
  # needs to update with the top video or something. or pull from URL
]

ytControllers.controller 'VideosShowCtrl', ['$scope', 'Video', ($scope, Video) ->
  $scope.videos = Video.query()
  $scope.theBestVideo = 'sMKoNBRZM1M';
  $scope.loadVideo = (name) -> 
    $scope.code = name
    return 
  # needs to update with the top video or something. or pull from URL
]
