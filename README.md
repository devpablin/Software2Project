# Software2Project
[![Build Status](https://travis-ci.org/devpablin/Software2Project.svg?branch=master)](https://travis-ci.org/devpablin/Software2Project)
[![Coverage Status](https://coveralls.io/repos/github/devpablin/Software2Project/badge.svg)](https://coveralls.io/github/devpablin/Software2Project)

Continuous Integration project on RoR 

## Configuracion inicial
El proyecto esta hecho en [Ruby on rails](https://rubyonrails.org/), para instalarlo pueden hacer clic [aca](http://installrails.com/steps/choose_os).

Para poder desarrollar en Rails necesitamos dos cosas importantes, una es la terminal de Linux (se puede instalar en Windows) y la otra es un editor de texto como [Atom](https://atom.io/) o el que sea de su agrado.

Una vez instalados Rails, Atom (o cualquier otro editor de texto) y la terminal lista, crean una carpeta donde vean conveniente para el proyecto y clonan este repositorio

### Como Clonar?

Desde su terminal se localizan en la carpeta que crearon para el proyecto y ejecutan este comando

```
git clone https://github.com/devpablin/Software2Project.git
```
Con eso ya tienen el proyecto en su computadora para empezar a desarrollar

````
$   cd Software2Project
$   bundle install
$   rails db:create
$   rails db:migrate
$   rails s
````

Se dirigen a [localhost:3000](localhost:3000) y deberian ver el proyecto corriendo normalmente

## Base de datos

El proyecto usa como gestor de base de datos [PostgreSQL](https://www.postgresql.org/)

En Linux se puede instalar con este comando:

```
sudo apt-get install postgresql
```

## Configuracion del CI

El proyecto ya esta configurado para que corran los tests, pero por si quieren saber como lo configure aca esta el [articulo](https://medium.com/craft-academy/getting-started-with-rails-tests-continuous-integration-deployment-7b5bfec905a5) que use como base

## Aprender Rails

Si quieren aprender a desarrollar en rails este [libro](https://www.railstutorial.org/book) a mi me parece super bueno porque lleva un fluje de aprendizaje sencillo y aprendes bastante.
Tambien las [guias de la documentacion de Rails](https://guides.rubyonrails.org/) me parecen super buenas.

Para los tests este [articulo](https://robots.thoughtbot.com/how-we-test-rails-applications) me parecio super bueno.
Y este otro [articulo](https://robots.thoughtbot.com/testing-from-the-outsidein) igual.

## Buscar, buscar, buscar....

Si encuentran algun problema al momento de correr el proyecto nuestro querido amigo [Google](https://google.com) es la respuesta a todo, no se den por vencidos porque para ruby hay artisima documentacion y ayuda.

Cualquier cosa me dicen nomas, esto me encanta hacer y con gusto les ayudo.
