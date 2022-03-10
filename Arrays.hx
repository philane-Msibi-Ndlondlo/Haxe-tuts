
// Define Todo Type

typedef Todo = {
    var title: String;
    var complete: Bool;
}

class Arrays {

    static var todos: Array<Todo> = [];

    static function addTodo(todoTitle: String) {
       
        todos.push({
            title: todoTitle,
            complete: false 
        });
    }

    static function toggleTodo(index: Int) { todos[index].complete = !todos[index].complete;  }

    static function menu() {
    
        Sys.println("--- YOUR TODOS ---");
        Sys.println("--- 1. Add Todo");
        Sys.println("--- 2. Toggle Todo");
        Sys.println("--- 3. Remove Todo");

        var choice = Std.parseInt(Sys.stdin().readLine());
   
        switch (choice) { 
            case 1:
                Sys.println("Enter todo title:");
                var title = Sys.stdin().readLine();
                addTodo(title);
                Sys.println("Todo Added");
            case 2:
                showTodos();
                Sys.println("Enter todo number:");
                var index = Std.parseInt(Sys.stdin().readLine());
                toggleTodo(index - 1);
            default: 
                Sys.printlb("Invalid Menu Choice");
        }

        showTodos();
    }

    static function showTodos() { 
        for (todo in todos) {
            Sys.println('${todo.title} - ${todo.complete}');
        }
     }

    static function main() {
   
        while (true) { menu(); }
    }

}
