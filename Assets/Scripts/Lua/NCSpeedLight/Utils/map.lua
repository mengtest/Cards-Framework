Map = { }

local this = Map

function this:New()
    o = { }
    setmetatable(o, self)
    self.__index = self
    self.count = 0
    return o
end

function this:Insert(k, v)

    if nil == self[k] then
        self[k] = v
        self.count = self.count + 1
        print("insert")
    end
    print("insert end")
end

function this:Remove(k)
    if nil ~= self[k] then
        self[k] = nil
        if self.count > 0 then
            self.count = self.count - 1
        end
    end
end

function this:GetPair(k)
    local value = nil
    if nil ~= self[k] then
        value = self[k]
        print("getpair")
    end
    return value
end

function this:Clear()
    for k, _ in pairs(self) do
        if nil ~= self[k] then
            self[k] = nil
        end
    end
    self.count = 0
end

local characters = Map:New()

characters:Insert("name1", " this Name:123")
characters:Insert("name1", " this Name:456")
characters:Remove("name1")
characters:Insert("name2", "this Name:2")
characters:Insert("name2", "this Name:4444444444444444444444")

local name2 = characters:GetPair("name2")
print(name2)

print(characters.count)

for k, v in pairs(characters) do
    print(k, v)
end
