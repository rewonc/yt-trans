ytServices = angular.module 'ytServices', []

ytServices.factory 'Video', ['$resource', ($resource) ->
  $resource '/api/videos/:id.json', id: '@id'
]