
/// A node is a container for the data. It
/// is also linked to the next [data] in the queue.
class Node {
  /// Data contained in the node.
  dynamic data;
  /// Link to the next node in the queue.
  Node next;
  
  Node(this.data);
}

class Queue {
  Node _head;
  Node _tail;

  /// This method inserts the [data] into
  /// the back of the queue (tail).
  push(data) {
    Node _newNode = Node(data); 
    this._head ??= _newNode;
    this._tail?.next = _newNode; 
    this._tail = _newNode;
  }

  /// This method removes the oldest element (head)
  /// from the queue.
  pop() {
    this._head = this._head?.next;
  }

  isEmpty() => (this._head == null);

  /// This method returns the oldest element (head)
  /// from the queue.
  peek() => this._head?.data;
}