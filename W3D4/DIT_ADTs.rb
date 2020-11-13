class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack.push(el)
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[0]
    end
end


# Exercise 2 - Queue
# Now let's write a Queue class. We will need the following instance 
# methods: enqueue(el), dequeue, and peek.

# Test your code to ensure it follows the principle of FIFO.

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!

# As always, test your code thoroughly to make sure all properties of maps are enforced.

class Map
    def initialize
        @dictionary = []
    end

    def set(key, value)
        existence = @dictionary.flatten.none? {|el| el == key}
        existence == true ? @dictionary << [key, value] : (self.delete(key) ; @dictionary << [key, value])
        p "THIS PROCESS HAS BEEN SUCCESFULLY COMPLETED"
    end

    def get(key)
        @dictionary.each {|subarr| return subarr[-1] if subarr[0] == key}
    end

    def delete(key)
        @dictionary.each_with_index do |subarr, i|
            if subarr.include?(key)
                @dictionary.delete_at(i)
            end
        end
        p "THIS PAIR HAS BEEN SUCCESFULLY TERMINATED"
    end

    def show
        @dictionary
    end
end