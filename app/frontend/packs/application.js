require("@rails/ujs").start()
// require ("twitter/bootstrap")
import 'bootstrap/dist/js/bootstrap'
import '../scripts/custom_scripts'
import '../scripts/map'
import 'lightbox2/dist/js/lightbox'

import '../styles/application'

const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
