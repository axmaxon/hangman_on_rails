import Rails from "@rails/ujs"
Rails.start()
import '../styles/application.scss'
import 'bootstrap/dist/js/bootstrap.js'
import '../scripts/game.js'
import "@fortawesome/fontawesome-free/css/all"

const images = require.context('../images', true)
