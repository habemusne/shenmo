angular.module('home.controllers', [])
.controller('HomeCtrl',
  [ '$scope',
    function(){
      var o = {
        posts: []
      };
      return o;
    }
  ]
);
