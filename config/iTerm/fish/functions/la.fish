function la --wraps=ls --wraps='lsd -la' --description 'alias la=lsd -la'
  lsd -la $argv; 
end
