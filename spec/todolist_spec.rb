require '../todolist'

RSpec.describe TodoList do
  describe "#add" do
    it "adds to list" do
      todo_list = TodoList.new
      todo = "grocery shopping"
      todo_list.add(todo)
      expect(todo_list.todos).to include(todo)
    end
  end

  describe "#remove" do
    it "removes from list" do
      todo_list = TodoList.new
      todo = "grocery shopping"
      todo_list.add(todo)
      todo_list.remove(todo)
      expect(todo_list.todos).not_to include(todo)
    end
  end

  describe "#todos" do
    it "returns all list items" do
      todo_list = TodoList.new
      todos = ["grocery shopping", "wash car"]
      todos.each { |todo| todo_list.add(todo) }
      expect(todo_list.todos).to eq(todos)
    end
  end
end
