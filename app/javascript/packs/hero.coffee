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
Vue.component('nguoi',{
	props: ['ten','tuoi']
	template: "<li>{{ten}}, {{tuoi}}</li>"	
	})
new Vue
	el: "#hero-6"
	components: ['nguoi']
	data:
		danhsachs:[
			{id: 1,ten: "Hung",tuoi: 30},
			{id: 2,ten: "Han",tuoi: 27},
			{id: 3,ten: "Trang",tuoi: 22},
			{id: 4,ten: "Hang",tuoi: 23}
		]
new Vue
	el: "#hero-7"
	data:
		message: "Nguyen Dinh Hung"
	computed:
		reverseMess: ()->
			this.message.split('').reverse().join('')
new Vue
	el: "#hero-8"
	data:
		firstname: "Hero"
		lastname: "Nguyen"
		fullname: "init nothing"
	watch:
		firstname: (val)->
			this.fullname=val+' '+this.lastname
		lastname: (val)->
			this.fullname=this.firstname+' '+val
new Vue
	el: "#hero-9"
	data:
		name: "Nguyen Dinh Hung"
		classO: "class_name"
		styleO: "font-size: 2em;text-align: center;color: red"
Vue.component('anchored-heading', {  
  render: (createElement) -># template: '#anchored-heading-template',
    return createElement(
      'h' + this.level,
      this.$slots.default
    )
  props: {
    level: {
      type: Number,
      required: true
    }
  }
})
new Vue
	el: "#hero-10"
	components: 'anchored-heading'	