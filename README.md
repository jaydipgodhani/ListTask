# list_widget_demo

A new Flutter project.

## Getting Started

‣ In this app, issue is that when user increment any list item's value and scrolldown list and when user scrollup the list item loose their previous state and value change by default to "0".<br>

‣ To preserve the state of widgets i combined stateful class with "AutomaticKeepAliveClientMixin".<br>

‣ "AutomaticKeepAliveClientMixin" mixin allows custom widget to control whether its state should be kept alive or not.<br>

‣ For the use of this mixin i override mixin's method "wantKeepAlive = true".<br>
