import 'bootstrap'
import '../src/cocoon.js'
import '../src/application.scss'
import '@fortawesome/fontawesome-free/scss/fontawesome.scss';
import '@fortawesome/fontawesome-free/scss/regular.scss';
import '@fortawesome/fontawesome-free/scss/solid.scss';

import Rails from '@rails/ujs'
Rails.start()

import * as ActiveStorage from '@rails/activestorage'
ActiveStorage.start()
