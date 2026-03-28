

vim.cmd ([[

    let wiki_1 = {}
    let wiki_1.path = '~/Documents/vimwiki/journaling/'
    let wiki_1.html_template = '~/Documents/vimwiki/journaling/html/'
    let wiki_1.syntax = 'markdown'
    let wiki_1.ext = '.md'

    let wiki_2 = {}
    let wiki_2.path = '~/Documents/vimwiki/moving/'
    let wiki_2.html_template = '~/Documents/vimwiki/moving/html/'
    let wiki_2.syntax = 'markdown'
    let wiki_2.ext = '.md'

    let g:vimwiki_list = [wiki_1, wiki_2]
    let g:vimwiki_auto_chdir = 1
    let g:vimwiki_global_ext = 0
    call vimwiki#vars#init()

]])
