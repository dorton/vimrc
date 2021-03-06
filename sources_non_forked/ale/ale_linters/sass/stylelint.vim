" Author: diartyz <diartyz@gmail.com>

call ale#Set('sass_stylelint_executable', 'stylelint')
call ale#Set('sass_stylelint_use_global', get(g:, 'ale_use_global_executables', 0))

call ale#linter#Define('sass', {
\   'name': 'stylelint',
\   'executable_callback': ale#node#FindExecutableFunc('sass_stylelint', [
\       'node_modules/.bin/stylelint',
\   ]),
\   'command': '%e --stdin-filename %s',
\   'callback': 'ale#handlers#css#HandleStyleLintFormat',
\})
