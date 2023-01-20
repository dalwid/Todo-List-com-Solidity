// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract TodoList{
    struct Todo {
        string message;
        bool done;
    }

    Todo[] public todos;

    function add(string calldata _message) public {
        todos.push(Todo({
            message: _message,
            done: false
        }));
    }

    function edit(uint _index, string calldata _message) public {
        Todo storage todo = todos[_index];
        todo.message = _message;
    }

    function getTodo(uint _index) public view returns (string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.message, todo.done);
    }

    function toggleDone(uint _index) public {
        Todo storage todo = todos[_index];
        todo.done = !todo.done;
    }
}