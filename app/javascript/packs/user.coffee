import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router/dist/vue-router.esm'
Vue.use(VueRouter)

# new Vue
# 	name: "users"
# 	el: "#users"	
# 	data:		
# 		users: [
# 			{name: "hung",email: "hung@gmail.com",admin: true},
# 			{name: "han",email: "han@gmail.com",admin: false}
# 		]	
# 	methods:
# 		change: ()->
# 			x=Math.floor((Math.random() * 100) + 1);
# 			if x%3!=0
# 				this.users.push({name: x,email: x+"@gmail.com",admin: true})
# 			else
# 				this.users.pop()
Foo = { template: '<div>this is foo</div>' }
FooA = { template: '<div>this is fooA</div>' }
FooB = { template: '<div>this is fooB</div>' }
A = { template: '<div>redirect A</div>' }
B = { template: '<div>redirect B</div>' }
import Bar from './bar.vue'
User = {
  template: '
    <div class="user">
      <h2>User {{ $route.params.id }}</h2>
      <router-view></router-view>
    </div>
  '
}
UserProfile= {template: '<div>user profile</div>'}
UserPost= {template: '<div>user post</div>'}
UserHome= {template: '<div>user home</div>'}
routes = [
	{ path: '/foo', components: {default:Foo,a: FooA,b: FooB }},
	{ path: '/bar', component: Bar },
	{ 
		path: '/user/:id',
		component: User,
		children: [
			{
				path: 'profile',
				component: UserProfile
			},
			{
				name: 'named_post',
				path: 'post',				
				component: UserPost
			},
			{
				path: '',
				component: UserHome
			}
		]  	
	},
	{ path: '/a',component: A,redirect: '/foo'},
	{ path: '/b',component: B,alias: '/l'},
]

router = new VueRouter({
  routes # short for `routes: routes`
})

app = new Vue({
  router
}).$mount('#app')