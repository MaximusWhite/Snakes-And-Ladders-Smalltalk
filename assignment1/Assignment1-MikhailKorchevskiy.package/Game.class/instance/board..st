setup
board: anArray

| args |
args := anArray asOrderedCollection .

x:= args removeFirst asNumber. 
y:= args removeFirst asNumber.

size:= x * y.

aBoard := Board new initialize: (OrderedCollection new ) x: x y: y.

(1 to: size) do: [ :index | aBoard get add:  (Cell new initializeWithIndex: index)] .
