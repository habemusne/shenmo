angular.module('shenmoApp',
  ['ui.router',
   'templates',
   'Devise',
   'home.controllers',
   'courses.services',
   'nav.controllers',
   'auth.controllers',
  ])
.config([
  '$stateProvider',
  '$urlRouterProvider',
  function($stateProvider, $urlRouterProvider) {

    $stateProvider
      .state('home', {
        url: '/home',
        templateUrl: 'angular/home/_home.html',
        controller: 'HomeCtrl'
      })
      .state('login', {
        url: '/login',
        templateUrl: 'auth/_login.html',
        controller: 'AuthCtrl',
        onEnter: ['$state', 'Auth', function($state, Auth) {
          Auth.currentUser().then(function (){
            $state.go('home');
          });
        }],
      })
      .state('register', {
        url: '/register',
        templateUrl: 'auth/_register.html',
        controller: 'AuthCtrl'
      });
      // .state('posts', {
      //   url: '/posts/{id}',
      //   templateUrl: '/posts.html',
      //   controller: 'PostsCtrl'
      // });

    $urlRouterProvider.otherwise('home');
  }
]);
