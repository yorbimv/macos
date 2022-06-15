# Fish

1. Instalar fish ```brew install fish```
2. Instalar omf para instalar temas
- ```curl -L https://get.oh-my.fish | fish```

**********

## Comandos mas usados omf

- Muestra todo lo instalado actualmente
    - ```omf list```
- Comando para instalar tema, la XXXXX es el nombre del tema
    - ```omf install theme  XXXXX```
- Elige el tema para ser usado
    - ```omf theme fox```



[Fuente: OMF](https://ubunlog.com/omf-personaliza-tope-fishshell/)

> En caso de error al ejecutar fish, instalar ```brew install md5sha1sum```


*********

## Alias 

Son los comandos personalizados que podemos usar en fish

### Procedimiento

1. Abrir la terminal fish
2. Creamos un alias ```lla``` para usar ```ls -la```
    - ```alias lla = 'ls -la'```
3. Guardamos la función + comando: 
    - ```funcsave lla```
4. Ahora ya se puede ejecutar el comando
