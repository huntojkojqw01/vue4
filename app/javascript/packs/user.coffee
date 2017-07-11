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
Foo = { template: '<div>foo</div>' }
Bar = { template: '<div>bar</div>' }

routes = [
  { path: '/foo', component: Foo },
  { path: '/bar', component: Bar }
]

router = new VueRouter({
  routes # short for `routes: routes`
})

app = new Vue({
  router
}).$mount('#app')