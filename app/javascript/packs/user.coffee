import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router/dist/vue-router.esm'
Vue.use(VueRouter)

import axios from 'axios/dist/axios'
new Vue
	name: "users"
	el: "#users"	
	data:		
		users: []
		errors: []
	created: ()->
		that=this
		axios.get('/users.json')
		.then (response)->
			that.users = response.data
			console.log(response)
  	.catch (e)->
  		that.errors.push(e)
  		console.log(e)	
Foo = { template: '<div>this is foo</div>' }
FooA = { template: '<div>this is fooA</div>' }
FooB = { template: '<div>this is fooB</div>' }
A = { template: '<div>redirect A</div>' }
B = { template: '<div>redirect B</div>' }
import Bar from './bar.vue'
User = {
	props: ['id'],
	template: '<div class="user">
		<h2>User {{ id }}</h2>
		<router-link :to="{name: \'named_profile\',params: {id: id}}">profile</router-link>
		<router-link :to="{name: \'named_post\',params: {id: id}}">posts</router-link>
		<router-view></router-view></div>'
}
UserProfile= {
	props: ['id'],
	template: '<div>user profile of user_{{id}}</div>'
}
UserPost= {
	props: ['id'],
	template: '<div>user post of user_{{id}}</div>'
}
UserHome= {template: '<div>user home</div>'}
routes = [
	{ path: '/foo', components: {default:Foo,a: FooA,b: FooB }},
	{ path: '/bar', component: Bar },
	{ 
		path: '/user/:id',
		component: User,
		props: true,
		children: [
			{
				name: 'named_profile'
				path: 'profile',
				component: UserProfile,
				props: true
			},
			{
				name: 'named_post',
				path: 'post',				
				component: UserPost,
				props: true
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