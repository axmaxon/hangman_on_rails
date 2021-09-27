import Rails from "@rails/ujs"
Rails.start()
import '../styles/application.scss'
import 'bootstrap/dist/js/bootstrap.js'

const images = require.context('../images', true)
