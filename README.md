# Python TDD usando el modelo CaaS 
Estructura base para hacer Testing en Python con Py.Test o Nosetests


### BUILD
```sh
$ docker-compose build
```

### RUN
Para iniciar el container:
```sh
$ docker-compose up -d
```
### MASIVE TESTS
Colocar los scripts a testear en "./tests" y ejecutar:
```sh
$ docker run python_tdd py.test tests/
```
o
```sh
$ docker run python_tdd nosetests tests/
```
Esto testeará todos los scripts dentro de "test" que lleven el prefijo "test_"

### INDIVIDUAL TESTS
Colocar los scripts a testear en "./tests" y ejecutar:
 ```sh
$ docker run python_tdd py.test tests/my_test_script.py
```
o
```sh
$ docker run python_tdd nosetests tests/my_test_script.py
```
Para testear solo el script "my_test_script.py"