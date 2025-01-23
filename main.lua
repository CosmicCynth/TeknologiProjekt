function love.load()
    --Tables & font
    scene = "mainMenu"
    sceneTxt = "Menu"
    sceneTable = {}
    sceneTable.mainMenu = {}
    sceneTable.budget = {}
    sceneTable.burgerMenu = {}
    sceneTable.settings = {}
    sceneTable.profil = {}
    sceneTable.budget.flere = {}
    sceneTable.guide = {}
    sceneTable.opstart = {}
    sceneTable.flerePoster = {}
    sceneTable.opsparing = {}
    sceneTable.planner = {}
    sceneTable.konto = {}

    font = love.graphics.newFont("font/workSans.ttf",25.5)
    love.graphics.setFont(font)

    --Forside
    sceneTable.mainMenu.sprite = love.graphics.newImage("sprite/Forside.png")

    sceneTable.mainMenu.burgerMenu = {}
    sceneTable.mainMenu.burgerMenu.x = 16
    sceneTable.mainMenu.burgerMenu.y = 16
    sceneTable.mainMenu.burgerMenu.radius = 32

    --Drop down menu
    sceneTable.burgerMenu.sprite = love.graphics.newImage("sprite/BurgerMenu.png")

    sceneTable.burgerMenu.burgerKnap = {}
    sceneTable.burgerMenu.burgerKnap.x = 16
    sceneTable.burgerMenu.burgerKnap.y = 16
    sceneTable.burgerMenu.burgerKnap.radius = 32

    sceneTable.burgerMenu.budgetKnap = {}
    sceneTable.burgerMenu.budgetKnap.x = 20
    sceneTable.burgerMenu.budgetKnap.y = 200
    sceneTable.burgerMenu.budgetKnap.radius = 20

    sceneTable.burgerMenu.guideKnap = {}
    sceneTable.burgerMenu.guideKnap.x = 22
    sceneTable.burgerMenu.guideKnap.y = 232
    sceneTable.burgerMenu.guideKnap.radius = 20

    sceneTable.burgerMenu.kontoKnap = {}
    sceneTable.burgerMenu.kontoKnap.x = 22
    sceneTable.burgerMenu.kontoKnap.y = 150
    sceneTable.burgerMenu.kontoKnap.radius = 20



    
    --Budget
    sceneTable.budget.sprite = love.graphics.newImage("sprite/Budget.png")

    sceneTable.budget.burgerKnap = {}
    sceneTable.budget.burgerKnap.x = 16
    sceneTable.budget.burgerKnap.y = 16
    sceneTable.budget.burgerKnap.radius = 32

    sceneTable.budget.startKnap = {}
    sceneTable.budget.startKnap.x = 200
    sceneTable.budget.startKnap.y = 200
    sceneTable.budget.startKnap.radius = 78
    --Guide
    sceneTable.guide.sprite = love.graphics.newImage("sprite/guide.png")

    sceneTable.guide.burgerKnap = {}
    sceneTable.guide.burgerKnap.x = 16
    sceneTable.guide.burgerKnap.y = 16
    sceneTable.guide.burgerKnap.radius = 32

    sceneTable.guide.opstartKnap = {}
    sceneTable.guide.opstartKnap.x = 100
    sceneTable.guide.opstartKnap.y = 360
    sceneTable.guide.opstartKnap.radius = 55

    --Opstart
    sceneTable.opstart.sprite = love.graphics.newImage("sprite/infoOpstart.png")

    sceneTable.opstart.burgerKnap = {}
    sceneTable.opstart.burgerKnap.x = 16
    sceneTable.opstart.burgerKnap.y = 16
    sceneTable.opstart.burgerKnap.radius = 32

    --Flere poster
    sceneTable.flerePoster.sprite = love.graphics.newImage("sprite/flerePoster.png")

    sceneTable.flerePoster.burgerKnap = {}
    sceneTable.flerePoster.burgerKnap.x = 16
    sceneTable.flerePoster.burgerKnap.y = 16
    sceneTable.flerePoster.burgerKnap.radius = 32

    sceneTable.flerePoster.nextKnap = {}
    sceneTable.flerePoster.nextKnap.x = 340
    sceneTable.flerePoster.nextKnap.y = 450
    sceneTable.flerePoster.nextKnap.radius = 32

    --opsparing
    sceneTable.opsparing.sprite = love.graphics.newImage("sprite/opsparing.png")

    sceneTable.opsparing.nextKnap = {}
    sceneTable.opsparing.nextKnap.x = 340
    sceneTable.opsparing.nextKnap.y = 450
    sceneTable.opsparing.nextKnap.radius = 32

    sceneTable.opsparing.backKnap = {}
    sceneTable.opsparing.backKnap.x = 70
    sceneTable.opsparing.backKnap.y = 450
    sceneTable.opsparing.backKnap.radius = 32

    --Planner
    sceneTable.planner.sprite = love.graphics.newImage("sprite/plannerMenu.png")

    sceneTable.planner.backKnap = {}
    sceneTable.planner.backKnap.x = 70
    sceneTable.planner.backKnap.y = 450
    sceneTable.planner.backKnap.radius = 32

    --Konto
    sceneTable.konto.sprite = love.graphics.newImage("sprite/konto.png")

    sceneTable.konto.burgerKnap = {}
    sceneTable.konto.burgerKnap.x = 16
    sceneTable.konto.burgerKnap.y = 16
    sceneTable.konto.burgerKnap.radius = 32

    

    

    --Timer
    timer = 0
    maxTimer = 10
end

function love.update(dt)
    timer = timer + 1 
    if timer > maxTimer then
        timer = maxTimer
    end

end

function love.draw()
    love.graphics.setColor(255,255,255,nil)
    if scene == "mainMenu" then
        love.graphics.circle("fill",sceneTable.mainMenu.burgerMenu.x,sceneTable.mainMenu.burgerMenu.y,sceneTable.mainMenu.burgerMenu.radius)
        love.graphics.draw(sceneTable.mainMenu.sprite,0,0)
    elseif scene == "burgerMenu" then
        love.graphics.circle("fill",sceneTable.burgerMenu.burgerKnap.x,sceneTable.burgerMenu.burgerKnap.y,sceneTable.burgerMenu.burgerKnap.radius)
        love.graphics.circle("fill",sceneTable.burgerMenu.budgetKnap.x,sceneTable.burgerMenu.budgetKnap.y,sceneTable.burgerMenu.budgetKnap.radius)
        love.graphics.circle("fill",sceneTable.burgerMenu.guideKnap.x,sceneTable.burgerMenu.guideKnap.y,sceneTable.burgerMenu.guideKnap.radius)
        love.graphics.circle("fill",sceneTable.burgerMenu.kontoKnap.x,sceneTable.burgerMenu.kontoKnap.y,sceneTable.burgerMenu.kontoKnap.radius)
        love.graphics.draw(sceneTable.burgerMenu.sprite,0,0)
       
    elseif scene == "budget" then
        love.graphics.circle("fill",sceneTable.budget.burgerKnap.x,sceneTable.budget.burgerKnap.y,sceneTable.budget.burgerKnap.radius)
        love.graphics.circle("fill",sceneTable.budget.startKnap.x,sceneTable.budget.startKnap.y,sceneTable.budget.startKnap.radius)
        love.graphics.draw(sceneTable.budget.sprite,0,0)
    elseif scene == "budgetCalc" then
        love.graphics.rectangle("fill",32,16,200,400)
    elseif scene == "guide" then
        love.graphics.circle("fill",sceneTable.guide.burgerKnap.x,sceneTable.guide.burgerKnap.y,sceneTable.guide.burgerKnap.radius)
        love.graphics.circle("fill",sceneTable.guide.opstartKnap.x,sceneTable.guide.opstartKnap.y,sceneTable.guide.opstartKnap.radius)
        love.graphics.draw(sceneTable.guide.sprite,0,0)
    elseif scene == "opstartBudget" then
        love.graphics.circle("fill",sceneTable.opstart.burgerKnap.x,sceneTable.opstart.burgerKnap.y,sceneTable.opstart.burgerKnap.radius)
        love.graphics.draw(sceneTable.opstart.sprite,0,0)
    elseif scene == "flerePoster" then
        love.graphics.circle("fill",sceneTable.flerePoster.burgerKnap.x,sceneTable.flerePoster.burgerKnap.y,sceneTable.flerePoster.burgerKnap.radius)
        love.graphics.circle("fill",sceneTable.flerePoster.nextKnap.x,sceneTable.flerePoster.nextKnap.y,sceneTable.flerePoster.nextKnap.radius)
        love.graphics.draw(sceneTable.flerePoster.sprite,0,0) 
    elseif scene == "opsparing" then
        love.graphics.circle("fill", sceneTable.opsparing.nextKnap.x,sceneTable.opsparing.nextKnap.y,sceneTable.opsparing.nextKnap.radius)
        love.graphics.circle("fill", sceneTable.opsparing.backKnap.x,sceneTable.opsparing.backKnap.y,sceneTable.opsparing.backKnap.radius)
        love.graphics.draw(sceneTable.opsparing.sprite,0,0)
    elseif scene == "planner" then
        love.graphics.circle("fill", sceneTable.planner.backKnap.x,sceneTable.planner.backKnap.y,sceneTable.planner.backKnap.radius)
        love.graphics.draw(sceneTable.planner.sprite,0,0)
    elseif scene == "konto" then
        love.graphics.circle("fill",sceneTable.konto.burgerKnap.x,sceneTable.konto.burgerKnap.y,sceneTable.konto.burgerKnap.radius)
        love.graphics.draw(sceneTable.konto.sprite,0,0) 
    end

    --love.graphics.setColor(0,0,0,nil)
    --love.graphics.print("Scene: "..sceneTxt.." timer: "..timer)
end


function love.mousereleased(x,y,button)
    if button == 1 then
        local mouseToTarget = ""
        local mouseToTarget1 = ""
        local mouseToTarget2 = ""
        if scene == "mainMenu" then
            mouseToTarget = distanceBetween(x,y,sceneTable.mainMenu.burgerMenu.x,sceneTable.mainMenu.burgerMenu.y) 
            if mouseToTarget < sceneTable.mainMenu.burgerMenu.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Burger Menu"
                scene = "burgerMenu"
            end
        end

        if scene == "burgerMenu" then
            mouseToTarget = distanceBetween(x,y,sceneTable.burgerMenu.burgerKnap.x,sceneTable.burgerMenu.burgerKnap.y)
            mouseToTarget1 = distanceBetween(x,y,sceneTable.burgerMenu.budgetKnap.x,sceneTable.burgerMenu.budgetKnap.y)
            mouseToTarget2 = distanceBetween(x,y,sceneTable.burgerMenu.guideKnap.x,sceneTable.burgerMenu.guideKnap.y)
            mouseToTarget3 = distanceBetween(x,y,sceneTable.burgerMenu.kontoKnap.x,sceneTable.burgerMenu.kontoKnap.y)
            if mouseToTarget < sceneTable.burgerMenu.burgerKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Menu"
                scene = "mainMenu"
            elseif mouseToTarget1 < sceneTable.burgerMenu.budgetKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Budget Menu"
                scene = "budget"
            elseif mouseToTarget2 < sceneTable.burgerMenu.guideKnap.radius and timer >= maxTimer then
                timer = 0 
                sceneTxt = "Guide menu"
                scene = "guide"
            elseif mouseToTarget3 < sceneTable.burgerMenu.kontoKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Konto Menu"
                scene = "konto"
            end
        end

        if scene == "budget" then
            mouseToTarget = distanceBetween(x,y,sceneTable.budget.burgerKnap.x,sceneTable.budget.burgerKnap.y)
            mouseToTarget1 = distanceBetween(x,y,sceneTable.budget.startKnap.x,sceneTable.budget.startKnap.y)
            if mouseToTarget < sceneTable.budget.burgerKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Burger Menu"
                scene = "burgerMenu"
            elseif mouseToTarget1 < sceneTable.budget.startKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "flerePosterBudget"
                scene = "flerePoster"
            end
        end

        if scene == "guide" then
            mouseToTarget = distanceBetween(x,y,sceneTable.guide.burgerKnap.x,sceneTable.guide.burgerKnap.y)
            mouseToTarget1 = distanceBetween(x,y,sceneTable.guide.opstartKnap.x,sceneTable.guide.opstartKnap.y)
            if mouseToTarget < sceneTable.guide.burgerKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Burger Menu"
                scene = "burgerMenu"
            elseif mouseToTarget1 < sceneTable.guide.opstartKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Opstart Menu"
                scene = "opstartBudget"
            end
        end

        if scene == "opstartBudget" then
            mouseToTarget = distanceBetween(x,y,sceneTable.opstart.burgerKnap.x,sceneTable.opstart.burgerKnap.y)
            if mouseToTarget < sceneTable.opstart.burgerKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Burger Menu"
                scene = "burgerMenu"
            end
        end

        if scene == "flerePoster" then
            mouseToTarget = distanceBetween(x,y,sceneTable.flerePoster.burgerKnap.x,sceneTable.flerePoster.burgerKnap.y)
            mouseToTarget1 = distanceBetween(x,y,sceneTable.flerePoster.nextKnap.x,sceneTable.flerePoster.nextKnap.y)
            
            if mouseToTarget < sceneTable.flerePoster.burgerKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Burger Menu"
                scene = "burgerMenu"
            elseif mouseToTarget1 < sceneTable.flerePoster.nextKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Opsparing Menu"
                scene = "opsparing"
            end
        end

        if scene == "opsparing" then
            mouseToTarget = distanceBetween(x,y,sceneTable.opsparing.nextKnap.x,sceneTable.opsparing.nextKnap.y)
            mouseToTarget1 = distanceBetween(x,y,sceneTable.opsparing.backKnap.x,sceneTable.opsparing.backKnap.y)

            if mouseToTarget < sceneTable.opsparing.nextKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "planner Menu"
                scene = "planner"
            end

            if mouseToTarget1 < sceneTable.opsparing.backKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "flerePosterBudget"
                scene = "flerePoster"
            end
        end

        if scene == "planner" then
            mouseToTarget = distanceBetween(x,y,sceneTable.planner.backKnap.x,sceneTable.planner.backKnap.y)

            if mouseToTarget < sceneTable.opsparing.backKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "opsparing menu"
                scene = "opsparing"
            end
        end

        if scene == "konto" then
            mouseToTarget = distanceBetween(x,y,sceneTable.konto.burgerKnap.x,sceneTable.konto.burgerKnap.y)

            if mouseToTarget < sceneTable.konto.burgerKnap.radius and timer >= maxTimer then
                timer = 0
                sceneTxt = "Burger Menu"
                scene = "burgerMenu"
            end
        end
    end
end

function distanceBetween(x1,y1,x2,y2)
    return math.sqrt((x2-x1)^2 + (y2-y1)^2)
end
