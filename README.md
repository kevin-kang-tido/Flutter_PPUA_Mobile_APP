
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



### QA 
-- A Future is used to represent a potential value, or error,
that will be available at some time in the future
qA Future can have two states:
q--Uncompleted
q--Completed. (success or error)


## Stream 
A source of asynchronous data events.
Provides a way to receive a sequence of events
When a stream has emitted all its event, a single "done"
event will notify the listener that the end has been reached.