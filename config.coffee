exports.config =
    # See docs at http://brunch.readthedocs.org/en/latest/config.html.
    coffeelint:
        pattern: /^app\/code-complete\/\.coffee$/
        options:
            indentation:
                value: 4
                level: "error"
            max_line_length: 
                value: 120
    jade:
        pretty: true # Adds pretty-indentation whitespaces to output (false by default)
    static_jade:                        # all optionals
        path:       [ /app(\/|\\)jade-doc/ ] 
        pretty: true
    files:
        javascripts:
            joinTo:
                #'javascripts/app.js': /(^app\/code-complete\/|^app\/initialize.coffee$)/
                'javascripts/app.js': /(^app\/code\/|^app\/initialize.coffee$)/
                'javascripts/vendor.js': /^vendor/
                'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
                'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
            order:
                # Files in `vendor` directories are compiled before other files
                # even if they aren't specified in order.
                before: [
                    'vendor/scripts/jquery-1.8.3.js'
                    'vendor/scripts/lodash-1.0.0-rc.2.js'
                    'vendor/scripts/backbone-0.9.9.js'
                ]

        stylesheets:
            joinTo: 'stylesheets/app.css'
            order:
                before: ['vendor/styles/normalize.css'
                    'vendor/styles/bootstrap.css'
                    'vendor/styles/bootstrap-responsive.css']
                after: ['vendor/styles/helpers.css']

        templates:
            joinTo: 
                'javascripts/templates.js': /.+\.jade$/
