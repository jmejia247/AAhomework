fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggishoctopus(fishes)
    longestfish = ""
    fishes.each_with_index do |fish, i|
        fishes.each_with_index do |phish, j|
            longestfish = j if fish.length < phish.length
        end
    end
    longestfish
end

def dominantoctopus(fishes)
    return fishes[0] if fishes.length <= 1

    middle = fishes.length / 2
    left = fishes[0...middle]
    right = fishes[middle..-1]

    left_sort = dominantoctopus(left)
    right_sort = dominantoctopus(right)
    mergfishes(left_sort, right_sort)
end

def mergfishes(left, right)
    merged = []

    until left.empty || right.empty
        if left.first > right first
            merged << right.shift
        else
            merged << left.shift
        end
    end

    merged + left + right
end

def cleveroctopus(fishes)
    longestfish = ''
    fishes.each do |fish|
        longestfish = fish if fish.length > longestfish.length
    end
    longestfish
end


tentacles = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slowdance("up", tentacles)
    tentacle = 0
    tentacles.each_with_index do |tacle, i|
        tentacle = i if tackle == "up"
    end
    tentacle
end

new_tentacles = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}

def constantdance!("up", new_tentacles)
    new_tentacles["up"]
end

