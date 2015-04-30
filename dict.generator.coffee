fs = require 'fs'

words = fs.readFileSync('./dict', 'utf-8').split('\n')
words = words.map (w) -> '"' + w + '"'

code = 'var words = [ ' + words.join(', ') + '];'

fs.writeFileSync('./js/dict.js', code, 'utf-8')