-- this is used to speed up telescope
return { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }

-- alternate way to install if the above fails. Requires make
-- return { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
