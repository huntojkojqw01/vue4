import Vue from 'vue/dist/vue.esm'
new Vue
	name: "users"
	el: "#users"	
	data:		
		users: [
			{name: "hung",email: "hung@gmail.com",admin: true},
			{name: "han",email: "han@gmail.com",admin: false}
		]	
	methods:
		change: ()->
			x=Math.floor((Math.random() * 100) + 1);
			if x%3!=0
				this.users.push({name: x,email: x+"@gmail.com",admin: true})
			else
				this.users.pop()