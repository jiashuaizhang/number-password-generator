require("socket")
math.randomseed(tostring(socket.gettime()):reverse():sub(1, 6))
temp = ""
for i = 0,5 do
  rand = math.random(0,9)
  temp = temp..rand
end
pwd = temp
print(pwd)
