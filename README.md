
### Some note during coding 


## Build flutter app 
```
flutter build apk 

```

--- find location of the build file 
```
explorer  build\app\outputs\flutter-apk\app-release.apk
```

### svg 

What is state?
State is the information of a widget at a specific time
It can be read synchronously when the widget is built
And might change during the lifetime of the widget.

Types
Flutter widgets are classified into two types of state:
Stateless widget
Stateful widget.

Lifecycle widget
initState(): Called once when the widget is
created, used for initialization.
build(): Called whenever the widget is rebuilt.
dispose(): Called when the widget is removed from
the tree, used for cleanup.
 