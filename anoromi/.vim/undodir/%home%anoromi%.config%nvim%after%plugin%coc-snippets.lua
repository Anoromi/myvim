Vim�UnDo� BK�d	ݠsE-���(f0'��Tv��9
�B      local keyset = vim.keymap.set             $       $   $   $    d�M�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d���     �                   �               5��                       +                   ]      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          d��     �                 &imap <C-l> <Plug>(coc-snippets-expand)       >" Use <C-j> for select text for visual placeholder of snippet.   &vmap <C-j> <Plug>(coc-snippets-select)       B" Use <C-j> for jump to next placeholder, it's default of coc.nvim    let g:coc_snippet_next = '<c-j>'       F" Use <C-k> for jump to previous placeholder, it's default of coc.nvim    let g:coc_snippet_prev = '<c-k>'       C" Use <C-j> for both expand and jump (make expand higher priority.)   +imap <C-j> <Plug>(coc-snippets-expand-jump)       ;" Use <leader>x for convert visual selected code to snippet   +xmap <leader>x  <Plug>(coc-convert-snippet)�                '" Use <C-l> for trigger snippet expand.5��                                                  �                          *                      �                          S                      �                          V                      �                          �                      �                          �                      �                          �                      �                                               �                          +                     �    	                      .                     �    
                      w                     �                          �                     �                          �                     �                          �                     �                                               �                                               �                          R                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          d��	     �                 --�               5��                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          d��    �                  5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                          d��6     �               �               5��                          �                     5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                          d��:     �               5��                          �                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                          d��:     �                  5��                          �                     5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                          d��;     �               �               5��                          �              w       5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                          d��B     �             �             5��                          �              T       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                          d��C     �             5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        d��D     �                     5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        d��E     �             5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                         m       v   m    d��Q     �                 vkeyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)5��              X                 X               5�_�                          ����                                                                                                                                                                                                                                                                                                                                         m       v   m    d��Z     �                 keyset("i", "<TAB>", '', opts)5��                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                         m       v   m    d��_     �                 keyset("i", "<C-l>", '', opts)5��                                              �                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                         m       v   m    d��b     �                 $keyset("i", "<C-l>", '<Plug>', opts)5��                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                         m       v   m    d��c    �                 &keyset("i", "<C-l>", '<Plug>()', opts)5��                                              �       !                                     �       +                 !                    5�_�                            ����                                                                                                                                                                                                                                                                                                                               /          /       V   /    d��w     �               �               5��                          0              :       5�_�                           ����                                                                                                                                                                                                                                                                                                                               /          /       V   /    d��y     �                 9keyset("i", "<C-l>", '<Plug>(coc-snippets-expand)', opts)5��                        8                    5�_�                           ����                                                                                                                                                                                                                                                                                                                               /          /       V   /    d��|     �                 9keyset("v", "<C-l>", '<Plug>(coc-snippets-expand)', opts)5��                        @                    5�_�                       *    ����                                                                                                                                                                                                                                                                                                                               /          /       V   /    d���     �                 9keyset("v", "<C-j>", '<Plug>(coc-snippets-expand)', opts)5��       *                 Z                    5�_�                       /    ����                                                                                                                                                                                                                                                                                                                               /          /       V   /    d���    �             5��                          0                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               /          /       V   /    d���     �               5��                          k                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               /          /       V   /    d���    �                  5��                          k                     �                          l                     �                          l                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��F     �               5��                          m                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��F     �                  5��                          m                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��I     �                 'public readonly : Event<> = this..event�                  5��                          n                     �                        p                    �                        o                    �                         n                    �                     '   n             K       �                                              �                        �                    �                         �                     �                        �                    �                         �                     �                        �                    �                                            �                                            �                                            �                                            �                                            5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             d��P     �               (private readonly hello = new Emitter<>()5��                        �                    �                         �                     �                                            5�_�       $           !      1    ����                                                                                                                                                                                                                                                                                                                                                             d��]    �                      �                 (private readonly hello = new Emitter<>()    �                 1public readonly hello: Event<> = this.hello.event5��       0                  �                     �       /                  �                     �       .                  �                     �       -                  �                     �       ,                  �                     �       +                  �                     �       *                  �                     �       )                  �                     �       (                  �                     �       '                  �                     �       &                  �                     �       %                  �                     �       $                  �                     �       #                  �                     �       "                  �                     �       !                  �                     �                          �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �       
                  �                     �       	                  �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                          �                     �       (                  �                     �       '                  �                     �       &                  �                     �       %                  �                     �       $                  �                     �       #                  �                     �       "                  �                     �       !                  �                     �                          �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                                              �                         ~                     �                         }                     �                         |                     �                         {                     �                         z                     �                         y                     �       
                  x                     �       	                  w                     �                         v                     �                         u                     �                         t                     �                         s                     �                         r                     �                         q                     �                         p                     �                         o                     �                          n                     �                          m                     5�_�   !       #       $           ����                                                                                                                                                                                                                                                                                                                                                          d�M�    �                   Slocal opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}       9keyset("i", "<C-l>", '<Plug>(coc-snippets-expand)', opts)       9keyset("v", "<C-j>", '<Plug>(coc-snippets-select)', opts)�               local keyset = vim.keymap.set5��                          �                     �                          �                     �                          �                     �                          �                     �                          �                     �                          :                     �                          =                     5�_�   !       "   $   #           ����                                                                                                                                                                                                                                                                                                                                                          d�M�     �               nlocal keyset = vim.keymap.set5��                          �                     5�_�   !           #   "           ����                                                                                                                                                                                                                                                                                                                                                          d�M�    �               //local keyset = vim.keymap.set�               //   U//local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}   //   ;//keyset("i", "<C-l>", '<Plug>(coc-snippets-expand)', opts)   //   ;//keyset("v", "<C-j>", '<Plug>(coc-snippets-select)', opts)5��                          �                     �                          �                     �                          �                     �                          �                     �                          �                     �                          :                     �                          =                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��F     �              �             
   8snippet defPrFunc "Create default function with props" b   'export default function ${0:INSERT}() {   	${1:NORMAL}   }   
endsnippet       &snippet emitter "emitter properties" b   )private readonly ${1} = new Emitter<$2>()   :public readonly ${1/^_(.*)/$1/}: Event<$2> = this.$1.event   
endsnippet5��                   
       o                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                         m       v   m    d��X     �                keyset("i", "<TAB", '', opts)5��                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  v        d��     �              �                '" Use <C-l> for trigger snippet expand.   &imap <C-l> <Plug>(coc-snippets-expand)       >" Use <C-j> for select text for visual placeholder of snippet.   &vmap <C-j> <Plug>(coc-snippets-select)       B" Use <C-j> for jump to next placeholder, it's default of coc.nvim    let g:coc_snippet_next = '<c-j>'       F" Use <C-k> for jump to previous placeholder, it's default of coc.nvim    let g:coc_snippet_prev = '<c-k>'       C" Use <C-j> for both expand and jump (make expand higher priority.)   +imap <C-j> <Plug>(coc-snippets-expand-jump)       ;" Use <leader>x for convert visual selected code to snippet   +xmap <leader>x  <Plug>(coc-convert-snippet)5��                      +   �              ]      5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  v        d��     �         #      '" Use <C-l> for trigger snippet expand.5�5��