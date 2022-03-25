# Emprendapp - Software para gestión de pequeños emprendimientos

La aplicación está construida en Flutter, el framework para el lenguaje Dart de Google.

La base de datos es una base no relacional, basada en colecciones en Firebase.

Las colecciones son:

[users, products, drafts, orders, expenses, posts]

La autenticación es vía Firebase Auth basada en dirección de email.

Los activos estáticos como imágenes se almacenan en Firebase Storage.

Los componentes de diseño e interfaz de usuario se basaron en [Material Design](https://material.io/design)

## Ejecutar el proyecto:

Es necesario tener la última versión _stable_ de Flutter.

### IMPORTANTE:

Ejecutar estos comandos por consola para preparar el esquema de firebase:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Para ejecutar la aplicación, moverse al directorio del programa y ejecutar en una terminal:

```
flutter run lib/main.dart
```
