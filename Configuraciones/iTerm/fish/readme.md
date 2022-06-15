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
    - ```omf theme xxxxx```



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

![Screen Shot 2022-06-15 at 2 25 54](https://user-images.githubusercontent.com/65741972/173776084-a2c1f387-3d9d-4309-9eba-b31f7f896575.png)



## Consultar alias creados

Para ver los alias creados, basta con dirigirte a 

<br>

**/Users/yorbi/.config/fish/functions**

<br>

Los alias tienen la terminación .fish
