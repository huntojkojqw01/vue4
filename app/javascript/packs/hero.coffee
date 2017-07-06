import Vue from 'vue/dist/vue.esm'
new Vue
	el: "#hero"
	data: {
		message: "Hello World!"
	}
new Vue
	el: "#hero-1"
	data: {
		message: "You loaded this page on"+new Date()
	}