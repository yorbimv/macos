function ll --wraps=ls --wraps='lsd -ll' --description 'alias ll=lsd -ll'
  lsd -ll $argv; 
end
