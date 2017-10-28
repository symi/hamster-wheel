import Vue from 'vue'
import Who from './pages/who.js'
import Index from './pages/index.vue'

// this is crap but cba working out stuff or router.

let path = (new URL(window.location.href)).pathname;

if (path.indexOf("who") > -1) {
  Who();
} else if (path.indexOf("what") > -1) {

} else if (path.indexOf("where") > -1) {

} else if (path.indexOf("when") > -1) {

} else if (path.indexOf("why") > -1) {

} else {
  new Vue({
    el: '#app',
    template: '<Index/>',
    components: { Index }
  })
}

