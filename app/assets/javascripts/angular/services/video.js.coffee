App.factory 'Video', ['$resource', ($resource) ->
  $resource '/api/videos/:id', id: '@id'
]