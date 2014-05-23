app.factory 'Video', ['$resource', ($resource) ->
  $resource '/api/videos/:id.json', id: '@id'
]