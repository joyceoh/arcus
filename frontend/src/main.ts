import { createApp } from 'vue'

// Vuetify make sure to pnpm i vuetify
import 'vuetify/styles';
import { createVuetify } from 'vuetify';
// as I continue to develop, we can remove all imports and do as needed to increase performance
import * as components from 'vuetify/components';
import * as directives from 'vuetify/directives';

import './style.css'
import App from './App.vue'

const vuetify = createVuetify({
  components,
  directives,
})
createApp(App).use(vuetify).mount('#app')
