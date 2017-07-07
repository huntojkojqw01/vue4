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
new Vue
	el: '#hero-2'
	data:
		seen: true
new Vue
	el: "#hero-3"
	data:
		texts:[
			{content: "Nguyen"},
			{content: "Dinh"},
			{content: "Hung"}
		]
new Vue
	el: "#hero-4"
	data:
		message: "Ahihi"
		title: "Bam vao nut nay la doan text tren se bi dao nguoc"
	methods:
		reverseMess: ()->
			this.message=this.message.split('').reverse().join('')
new Vue
	el: "#hero-5"
	data:
		message: "Noi dung intput"