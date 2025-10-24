# App Curso Flutter

Proyecto educativo de Flutter que contiene múltiples ejemplos y ejercicios prácticos para aprender el desarrollo de aplicaciones móviles.

## Descripción

Este es un proyecto de aprendizaje de Flutter que incluye diferentes pantallas y componentes para practicar conceptos fundamentales del framework. El proyecto está organizado en screens (pantallas completas) y pages (componentes de páginas).

## Estructura del Proyecto

```
lib/
├── main.dart                    # Punto de entrada de la aplicación
├── common/                      # Utilidades y componentes comunes
├── models/                      # Modelos de datos
│   └── gif.dart                # Modelo para representar GIFs
├── screens/                     # Pantallas completas de la aplicación
│   ├── counter_screen.dart     # Pantalla de contador básico
│   └── counter_functions_screen.dart  # Contador con funciones avanzadas
└── pages/                       # Páginas y componentes reutilizables
    ├── alerts.dart             # Ejemplos de alertas y diálogos
    ├── animated_container.dart # Animaciones con Container
    ├── api_gifs.dart           # Consumo de API de GIFs
    ├── button_navigation_bar.dart # Barra de navegación inferior
    ├── carousel_swiper.dart    # Carrusel de imágenes
    ├── conditions.dart         # Ejemplos de renderizado condicional
    ├── login.dart              # Pantalla de inicio de sesión
    ├── navigation.dart         # Navegación entre pantallas
    ├── person_list.dart        # Lista de personas con gestión de estado
    └── scafold.dart            # Ejemplos de uso de Scaffold
```

## Características Principales

### 📱 Screens (Pantallas)

- **Counter Screen**: Contador simple con FloatingActionButton
- **Counter Functions Screen**: Contador avanzado con múltiples controles (incrementar, decrementar, reiniciar, +2)

### 🎨 Components Destacados

- **API Integration**: Consumo de API de Giphy para mostrar GIFs
- **Carousel**: Implementación de carrusel de imágenes usando `card_swiper`
- **Alerts & Dialogs**: Diferentes tipos de alertas y diálogos personalizados
- **Lists**: Gestión de listas con operaciones CRUD
- **Navigation**: Navegación entre diferentes pantallas
- **Animations**: Contenedores animados y transiciones

## Dependencias

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.6
  http: ^1.2.1              # Para peticiones HTTP
  card_swiper: ^3.0.1       # Para carruseles de imágenes
```

## Configuración del Proyecto

### Requisitos Previos

- Flutter SDK (>=3.4.0 <4.0.0)
- Dart SDK
- Android Studio o VS Code
- Emulador o dispositivo físico

### Instalación

1. Clona el repositorio:

```bash
git clone <url-del-repositorio>
cd app_curso_flutter
```

2. Instala las dependencias:

```bash
flutter pub get
```

3. Ejecuta la aplicación:

```bash
flutter run
```

## Conceptos de Flutter Aplicados

- **StatefulWidget vs StatelessWidget**: Manejo de estado mutable e inmutable
- **setState**: Actualización de la interfaz de usuario
- **Material Design**: Implementación de componentes Material
- **Widgets personalizados**: Creación de componentes reutilizables
- **Navegación**: Uso de Navigator para cambiar entre pantallas
- **HTTP Requests**: Consumo de APIs REST
- **Renderizado condicional**: Uso de operadores ternarios y condicionales
- **Gestión de listas**: CRUD de elementos en listas
- **Callbacks**: Paso de funciones como parámetros

## Recursos de Aprendizaje

- [Documentación oficial de Flutter](https://docs.flutter.dev/)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)

## Notas

Este proyecto está configurado como privado (`publish_to: 'none'`) y es únicamente para propósitos educativos.
