exports.config =
  files:
    javascripts:
      joinTo: 
        'js/app.js': /(^app|^bower_components\/bootstrap\/dist\/js\/bootstrap.js)/
        'js/jquery.js' : /^bower_components\/jquery\/dist\/jquery\.js/
        'js/holder.js' : /^bower_components\/holderjs\/holder\.js/
    stylesheets:
      joinTo: 'css/app.css'
  plugins:
    sass:
      options:
        includePaths: [
          'bower_components/bootstrap/scss'
        ]
    postcss:
      processors: [
        require('autoprefixer')
      ]
    babel:
      ignore: [
        /^(bower_components|vendor)/
      ]
