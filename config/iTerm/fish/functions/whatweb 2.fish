function whatweb --wraps=docker\ run\ --tty\ --interactive\ --rm\ guidelacour/whatweb\ \\./whatweb --description alias\ whatweb=docker\ run\ --tty\ --interactive\ --rm\ guidelacour/whatweb\ \\./whatweb
  docker run --tty --interactive --rm guidelacour/whatweb \./whatweb $argv; 
end
