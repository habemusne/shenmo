angular.module('courses.services', [])
.factory('CourseResource',
  [ '$http',
    function($http){
      var o = {
        posts: []
      };
      o.getAll = function(){
        return $http.get('/course/index').success(function(data){
          angular.copy(data, o.posts);
        });
      };
      return o;
    }
  ]
);
