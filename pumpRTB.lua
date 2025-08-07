--works for: object 279

local Gear = false
local lastGearToggle = false
local Speed = false
local lastSpeedToggle = false

while true do 

    local drive = redstone.getInput("top")
    local turret = redstone.getInput("left")

    if drive and not lastSpeedToggle then
        Speed = not Speed
        redstone.setOutput("top", Speed)
        print("drive gear: ", Speed)
    end
    lastSpeedToggle = drive

    if turret and not lastGearToggle then
        Gear = not Gear
        redstone.setOutput("left", Gear)
        print("turret gear: ", Gear)
    end
    lastGearToggle = turret

    peripheral.call('right', 'pushFluid','back')
    peripheral.call('right', 'pushFluid','front')
    peripheral.call('right', 'pushFluid','bottom')
    sleep(0.05)
end

