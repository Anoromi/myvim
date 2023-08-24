Vim�UnDo� hҀ7�kqd8��`�����i�����:OR$!                     5       5   5   5    d�kh    _�                             ����                                                                                                                                                                                                                                                                                                                                                          d��-    �                 Z  -- A list of parser names, or "all" (the five listed parsers should always be installed)   P  ensure_installed = { "c", "lua", "javascript", "typescript", "vim", "query" },       G  -- Install parsers synchronously (only applied to `ensure_installed`)     sync_install = false,       ?  -- Automatically install missing parsers when entering buffer   W  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally     auto_install = true,       ^  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)   �  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!         highlight = {       enable = true,           R    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.   Y    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).   ^    -- Using this option may slow down your editor, and you may see some duplicate highlights.   9    -- Instead of true it can also be a list of languages   .    additional_vim_regex_highlighting = false,     },   }�               (require'nvim-treesitter.configs'.setup {5��                                                �                          .                      �                          �                      �                          �                      �                          �                      �                          /                     �                          J                     �    	                      N                     �    
                      �                     �                          �                     �                                               �                          
                     �                          l                     �                          �                     �                          �                     �                                               �                          #                     �                          '                     �                          +                     �                          �                     �                          �                     �                          @                     �                          }                     �                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�L>     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        d�LA     �                      +-- require'nvim-treesitter.configs'.setup {   ]--   -- A list of parser names, or "all" (the five listed parsers should always be installed)   S--   ensure_installed = { "c", "lua", "javascript", "typescript", "vim", "query" },   --    J--   -- Install parsers synchronously (only applied to `ensure_installed`)   --   sync_install = false,   --    B--   -- Automatically install missing parsers when entering buffer   Z--   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally   --   auto_install = true,   --    a--   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)   �--   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!   --    --   highlight = {   --     enable = true,   --    --    U--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.   \--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).   a--     -- Using this option may slow down your editor, and you may see some duplicate highlights.   <--     -- Instead of true it can also be a list of languages   1--     additional_vim_regex_highlighting = false,   --   },   -- }5��                                                �                          +                      �                          �                      �                          �                      �                          �                      �                          $                     �                          =                     �                          ?                     �    	                      �                     �    
                      �                     �                          �                     �                          �                     �                          S                     �                          �                     �                          �                     �                          �                     �                                               �                                               �                                               �                          Z                     �                          �                     �                                               �                          P                     �                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        d�LE     �                5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        d�LF     �      	          5��                          <                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        d�LG     �                5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                        d�LH     �                5��                          �                     5�_�      
                      ����                                                                                                                                                                                                                                                                                                                                                        d�LH     �                5��                          �                     5�_�         	       
           ����                                                                                                                                                                                                                                                                                                                                                        d�LJ     �                5��                          �                     5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                        d�LL     �                  �             5��                          �                     �                      
   �              
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                        d�LR     �                  autotag = 5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                        d�LR    �                    �             �                   }�                  autotag = {}5��                        �                     �                          �                     �                         �                    �                         �                     �       
                 �                    �                        �                     �                          �                     �                         �                     �                         �                     �                         �                     �       
                 �                    �                        �                     �                         �                    �                          �                     �                         �                     �                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       d�PE     �                   autotag = {        enable = true      }5��                          �      '               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�PF     �                  �             5��                          �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                        �                    �                        �                     �                          �                     �                         �                     �                         �                     �                         �                     �                        �                    �                         �                     �                         �                     �                         �                     �                         �                     �                        �                    �                         �                     �                        �                    �                        �                    �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�PV     �                  auto_install + 5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�PV     �                  auto_install + []5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�PX     �                  auto_install = 5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�P`     �                  auto_install = {}5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�Pe    �                   autocomplete5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       d�Q     �                  �             5��                          �                     �                      
   �              
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�Q     �                  autotag + 5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�Q     �                  autotag + []5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�Q     �                  autotag = 5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d�Q    �                    �             �                   }�                  autotag = {}5��                        �                     �                          �                     �                         �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       d�Q!    �                   autotag = {        enable = true      }5��                          �      '               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�R�     �                  �               5��                          �                     �                          �                     �                         �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�R�    �                  �               5��                       .   �              .       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�S    �                 .lvim.builtin.treesitter.autotag.enable = true 5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�T�     �             5��                          �                     �                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             d�T�    �                �             5��                         �              #       5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                       d�T�   	 �                   enable = true     }�                 autotag = {5��                         �                     �                         �                     �                         �                     5�_�       #           !          ����                                                                                                                                                                                                                                                                                                                                                       d�T�   
 �             5��                          �                     �                         �                     �                         �                     �                          �                     5�_�   !   $   "       #      )    ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �                /     additional_vim_regex_highlighting = false,5��       )                  s                     5�_�   #   %           $      )    ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �                *     additional_vim_regex_highlighting = ,5��       )                  s                     5�_�   $   &           %      *    ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         !    �                     },�                ,     additional_vim_regex_highlighting = {},5��       *                 t                     �                          u                     �                         u                    5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         "             5��                         |                     5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         "      	       ""5��                         }                     5�_�   '   *           (          ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         "             "php"5��                         �                     5�_�   (   +   )       *          ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         "             "php": true5��                        �                    5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         "             "php" = true5��                         |                     5�_�   +   -           ,      
    ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         "             php" = true5��       
                                       5�_�   ,   .           -      
    ����                                                                                                                                                                                                                                                                                                                                                             d�j�    �   !               �               "       ) require'nvim-treesitter.configs'.setup {   [   -- A list of parser names, or "all" (the five listed parsers should always be installed)   Q   ensure_installed = { "c", "lua", "javascript", "typescript", "vim", "query" },       H   -- Install parsers synchronously (only applied to `ensure_installed`)      sync_install = false,       @   -- Automatically install missing parsers when entering buffer   X   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally      auto_install = true,       _   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)   �   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!          highlight = {        enable = true,           S     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.   Z     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).   _     -- Using this option may slow down your editor, and you may see some duplicate highlights.   :     -- Instead of true it can also be a list of languages   *     additional_vim_regex_highlighting = {          php = true        },      },          autotag = {        enable = true      }    }       0--lvim.builtin.treesitter.autotag.enable = true 5��            !   0   !               �      �      �    !                      �                     5�_�   -   /           .      (    ����                                                                                                                                                                                                                                                                                                                                         (       v   (    d�j�    �               )    additional_vim_regex_highlighting = ,�         !      )    additional_vim_regex_highlighting = {         php = true       },5��       (                 b                     �       (                  b                     �       )                  c                     �       (                 b                    5�_�   .   0           /      ,    ����                                                                                                                                                                                                                                                                                                                               ,          (       v   (    d�kZ     �               -    additional_vim_regex_highlighting = true,5��       +                  e                     �       *                  d                     �       )                  c                     �       (                  b                     5�_�   /   1           0      (    ����                                                                                                                                                                                                                                                                                                                               ,          (       v   (    d�k[     �               )    additional_vim_regex_highlighting = ,5��       (                  b                     5�_�   0   2           1      )    ����                                                                                                                                                                                                                                                                                                                               ,          (       v   (    d�k[     �               +    additional_vim_regex_highlighting = [],5��       )                  c                     5�_�   1   3           2      *    ����                                                                                                                                                                                                                                                                                                                               ,          (       v   (    d�k[     �               -    additional_vim_regex_highlighting = [""],5��       *                  d                     5�_�   2   4           3      (    ����                                                                                                                                                                                                                                                                                                                               ,          (       v   (    d�kd     �               0    additional_vim_regex_highlighting = ["php"],5��       (                 b                    5�_�   3   5           4      .    ����                                                                                                                                                                                                                                                                                                                               ,          (       v   (    d�kf     �               0    additional_vim_regex_highlighting = {"php"],5��       .                 h                    5�_�   4               5      .    ����                                                                                                                                                                                                                                                                                                                               ,          (       v   (    d�kg    �                  �                  )require 'nvim-treesitter.configs'.setup {   Z  -- A list of parser names, or "all" (the five listed parsers should always be installed)   P  ensure_installed = { "c", "lua", "javascript", "typescript", "vim", "query" },       G  -- Install parsers synchronously (only applied to `ensure_installed`)     sync_install = false,       ?  -- Automatically install missing parsers when entering buffer   W  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally     auto_install = true,       ^  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)   �  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!         highlight = {       enable = true,           R    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.   Y    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).   ^    -- Using this option may slow down your editor, and you may see some duplicate highlights.   9    -- Instead of true it can also be a list of languages   0    additional_vim_regex_highlighting = {"php"},     },         autotag = {       enable = true     }   }       /--lvim.builtin.treesitter.autotag.enable = true5��               /                  �      �      �                          �                     5�_�   (           *   )          ����                                                                                                                                                                                                                                                                                                                                                             d�j�     �         "             "php"= true5��                        �                    5�_�   !           #   "      )    ����                                                                                                                                                                                                                                                                                                                                                             d�j�    �                .     additional_vim_regex_highlighting = true,5��       )                 s                    5�_�              
   	           ����                                                                                                                                                                                                                                                                                                                                                        d�LH     �               R    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.5��                                               5��