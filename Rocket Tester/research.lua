local plr = game:GetService("Players").LocalPlayer


local function maxResearch()
    local leaderstats = plr:FindFirstChild("leaderstats")
    if leaderstats then
        for _, v in ipairs(leaderstats:GetChildren()) do
            if v.Name:lower():find("research") and v:IsA("NumberValue") or v:IsA("IntValue") then
                v.Value = 999999999 
            end
        end
    end
 
    for _, v in ipairs(plr:GetChildren()) do
        if v.Name:lower():find("research") and (v:IsA("NumberValue") or v:IsA("IntValue")) then
            v.Value = 999999999
        end
    end
end

maxResearch()
