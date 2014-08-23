ytServices = angular.module 'ytServices', []

ytServices.factory 'Video', ['$resource', ($resource) ->
  $resource '/api/videos/:id.json', id: '@id'
]

ytServices.factory 'Snippet', ['$resource', ($resource) ->
  $resource '/api/videos/:video_id/snippets/:id.json', {video_id: '@video_id', id: '@id'}
]

ytServices.factory 'Comment', ['$resource', ($resource) ->
  $resource '/api/snippets/:snippet_id/comments/:id.json', {snippet_id: '@snippet_id', id: '@id'}
]