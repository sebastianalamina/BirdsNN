# Reconocimiento de cantos de aves :bird::sound::ear:

El proyecto [*Reconocimiento de cantos de aves*](https://l52mas.gitlab.io/projects/reconocimiento-cantos-aves/) es uno de los varios proyectos del [*Laboratorio L52+*](https://l52mas.gitlab.io/), enfocados en el Procesamiento del Lenguaje Natural (NLP) mediante técnicas de inteligencia artificial, aprendizaje profundo, aprendizaje automático, y ciencia de datos.

## Estructura del proyecto :card_index_dividers:

- El archivo `Birds NN.ipynb` es el *notebook* de *Jupyter* con la red neuronal propuesta.

- El archivo `execute_nn.sh` es un *script* en *shell* que ejecuta el *notebook* en segundo plano (y aún cuando el usuario de la máquina no esté loggeado) sin restricciones sobre el tiempo de ejecución, arrojando el resultado dentro de `runs/notebooks/` con el año, mes, día, hora y minuto del comienzo de la ejecución.

- El archivo `execute_stats.sh` es un *script* en *shell* que levanta un servidor de *Jupyter* (para visualizar las ejecuciones dentro de `runs/notebooks/`) y otro servidor de *Tensorboard* (para visualizar las estadísticas obtenidas de `runs/tensorboard/`).
	- **NOTA**: Al terminar de analizar las estadísticas de *Tensorboard*, es necesario cerrar este servidor. Una opción es recordar/anotar el PID del servidor de *Tensorboard* que se imprime en la consola (al iniciar el servidor) para, al final, terminar este proceso.

- La carpeta `runs/` incluye los archivos resultantes de ejecutar el *notebook*.
	- `runs/models/` almacena los parámetros ajustables (i.e. pesos y sesgos) del modelo de *PyTorch*.
	- `runs/notebooks/` almacena los *notebooks* ejecutados en segundo plano con *nbconvert*, mostrando la salida de las celdas ejecutadas.
	- `runs/python_objects/` almacena distintos objetos de *Python* (mediante su módulo nativo *pickle*) para su cargado dentro del *notebook*.
	- `runs/tensorboard/` almacena los archivos que el *SummaryWriter* escribe para la visualización de estadísticas en *Tensorboard*.

## Documentación :open_book:

- [Este artículo](https://towardsdatascience.com/audio-deep-learning-made-simple-sound-classification-step-by-step-cebc936bbe5) explica el procesamiento de los audios; cómo se clasifican a partir de sus archivos nativos, pasando por sus conversiones a espectrogramas, por capas neuronales convolucionales, y por clasificadores lineales.

- [Este artículo](https://towardsdatascience.com/bird-song-classification-using-siamese-networks-and-dilated-convolutions-3b38a115bc1) explica la clasificación de cantos de aves usando una Red Neuronal Siamesa, y detalla una arquitectura similar a la de este proyecto.

- [La figura 1](https://www.semanticscholar.org/paper/Bird-Detection-using-Siamese-Neural-Network-Gupta-Pandey/7f9169b99edf89231cfe1c75c659c72e0555c38a/figure/0) de [este *paper*](https://www.ijitee.org/wp-content/uploads/papers/v9i7/E2468039520.pdf), que explica la identificación de aves mediante una Red Neuronal Siamesa, ejemplifica el uso de capas convolucionales (con sus respectivos kernels, paddings, poolings, etc.) y capas lineales para la clasificación de una entrada.

- [Este *paper*](https://arxiv.org/pdf/2105.00202.pdf) detalla (especialmente en su figura 1) el flujo de una arquitectura que determina qué tan similares son dos archivos de audio.

- [Este apartado](https://nbconvert.readthedocs.io/en/latest/execute_api.html) de la documentación de *nbconvert* explica cómo utilizar esta herramienta para la ejecución en segundo plano de un *notebook* de *Jupyter*, limitando cierto tiempo de ejecución, arrojando el resultado en un archivo, manejando posibles errores, etc.

- [Este artículo](https://medium.com/@vegi/visualizing-higher-dimensional-data-using-t-sne-on-tensorboard-7dbf22682cf2) explica la técnica *t-SNE* para la visualización de datos multidimensionales en *TensorBoard*.

- [Este artículo](https://aprendeia.com/curvas-roc-y-area-bajo-la-curva-auc-machine-learning/) teoriza sobre las curvas *ROC* y *AUC*.

## Autores :busts_in_silhouette:

- [ivanvladimir]( https://github.com/ivanvladimir ) (Ivan Vladimir Meza Ruiz)
- [sebastianalamina]( https://github.com/sebastianalamina ) (Sebastián Alamina Ramírez)
