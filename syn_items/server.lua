--[[ Credits by synTM ]]-- ! Don't Edit this Disclaimer !

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()

    Citizen.Wait(1000)

    VorpInv.RegisterUsableItem("coffee", function(data)
        --This execute when user use an item.
        VorpInv.subItem(data.source, "coffee", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You drink some Coffee", 5000)
        TriggerClientEvent("syn:coffee", data.source)
    end)

    VorpInv.RegisterUsableItem("haycube", function(data)

        VorpInv.subItem(data.source, "haycube", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You fed horse some Hay", 5000)
        TriggerClientEvent("syn:haycube", data.source)
    end)

    VorpInv.RegisterUsableItem("kidneybeans_can", function(data)

        VorpInv.subItem(data.source, "kidneybeans_can", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some beans", 5000)
        TriggerClientEvent("syn:beans", data.source)
    end)

    VorpInv.RegisterUsableItem("applepie", function(data)

        VorpInv.subItem(data.source, "applepie", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Apple Pie", 5000)
        TriggerClientEvent("syn:applepie", data.source)
    end)

    VorpInv.RegisterUsableItem("medicine", function(data)

        VorpInv.subItem(data.source, "medicine", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You take a medicine", 5000)
        TriggerClientEvent("syn:medicine", data.source)
    end)

    VorpInv.RegisterUsableItem("peach", function(data)

        VorpInv.subItem(data.source, "peach", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate a peach", 5000)
        TriggerClientEvent("syn:peach", data.source)
    end)

    VorpInv.RegisterUsableItem("water", function(data)

        VorpInv.subItem(data.source, "water", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You drank some water", 5000)
        TriggerClientEvent("syn:water", data.source)
    end)

    VorpInv.RegisterUsableItem("venisonmeal", function(data)

        VorpInv.subItem(data.source, "venisonmeal", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Venisonmeal", 5000)
        TriggerClientEvent("syn:venisonmeal", data.source)
    end)

    VorpInv.RegisterUsableItem("venison", function(data)

        VorpInv.subItem(data.source, "venison", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Venison", 5000)
        TriggerClientEvent("syn:venison", data.source)
    end)

    VorpInv.RegisterUsableItem("carrot", function(data)

        VorpInv.subItem(data.source, "carrot", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You a Carrot", 5000)
        TriggerClientEvent("syn:carrot", data.source)
    end)

    VorpInv.RegisterUsableItem("cottoncandy", function(data)

        VorpInv.subItem(data.source, "cottoncandy", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You some Cotton Candy", 5000)
        TriggerClientEvent("syn:cottoncandy", data.source)
    end)

    VorpInv.RegisterUsableItem("caramel", function(data)

        VorpInv.subItem(data.source, "caramel", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Caramel", 5000)
        TriggerClientEvent("syn:caramel", data.source)
    end)

    VorpInv.RegisterUsableItem("oleandersage", function(data)

        VorpInv.subItem(data.source, "oleandersage", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Oleander Sage", 5000)
        TriggerClientEvent("syn:oleandersage", data.source)
    end)

    VorpInv.RegisterUsableItem("potato", function(data)

        VorpInv.subItem(data.source, "potato", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate a Potato", 5000)
        TriggerClientEvent("syn:potato", data.source)
    end)

    VorpInv.RegisterUsableItem("ginseng", function(data)

        VorpInv.subItem(data.source, "ginseng", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Ginseng", 5000)
        TriggerClientEvent("syn:ginseng", data.source)
    end)

    VorpInv.RegisterUsableItem("whitesage", function(data)

        VorpInv.subItem(data.source, "whitesage", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some White Sage", 5000)
        TriggerClientEvent("syn:whitesage", data.source)
    end)

    VorpInv.RegisterUsableItem("yarrow", function(data)

        VorpInv.subItem(data.source, "yarrow", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Yarrow", 5000)
        TriggerClientEvent("syn:yarrow", data.source)
    end)


    VorpInv.RegisterUsableItem("cookedfish", function(data)

        VorpInv.subItem(data.source, "cookedfish", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Fish", 5000)
        TriggerClientEvent("syn:fish", data.source)
    end)

    VorpInv.RegisterUsableItem("apple", function(data)

        VorpInv.subItem(data.source, "apple", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You Fed Horse an Apple", 5000)
        TriggerClientEvent("syn:apple", data.source)
    end)

    VorpInv.RegisterUsableItem("corn", function(data)

        VorpInv.subItem(data.source, "corn", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Corn", 5000)
        TriggerClientEvent("syn:corn", data.source)
    end)

    VorpInv.RegisterUsableItem("choccookie", function(data)

        VorpInv.subItem(data.source, "choccookie", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate a Chocolate Cookie", 5000)
        TriggerClientEvent("syn:choccookie", data.source)
    end)

    VorpInv.RegisterUsableItem("milk", function(data)

        VorpInv.subItem(data.source, "milk", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You drank some Milk", 5000)
        TriggerClientEvent("syn:milk", data.source)
    end)

    VorpInv.RegisterUsableItem("cooked_stringy", function(data)

        VorpInv.subItem(data.source, "cooked_stringy", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Cooked Stringy Meat", 5000)
        TriggerClientEvent("syn:cooked_stringy", data.source)
    end)

    VorpInv.RegisterUsableItem("heroin", function(data)

        VorpInv.subItem(data.source, "heroin", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You consumed some Heroin", 5000)
        TriggerClientEvent("syn:heroin", data.source)
    end)

    VorpInv.RegisterUsableItem("cocacola", function(data)

        VorpInv.subItem(data.source, "cocacola", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You drank some Coca-Cola", 5000)
        TriggerClientEvent("syn:cocacola", data.source)
    end)

    VorpInv.RegisterUsableItem("asprin", function(data)

        VorpInv.subItem(data.source, "asprin", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You consumed some Asprin", 5000)
        TriggerClientEvent("syn:asprin", data.source)
    end)

    VorpInv.RegisterUsableItem("baconegg", function(data)

        VorpInv.subItem(data.source, "baconegg", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Bacon & Eggs", 5000)
        TriggerClientEvent("syn:baconegg", data.source)
    end)


    VorpInv.RegisterUsableItem("bakedfish", function(data)

        VorpInv.subItem(data.source, "bakedfish", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Baked Fish", 5000)
        TriggerClientEvent("syn:bakedfish", data.source)
    end)


    VorpInv.RegisterUsableItem("applemash", function(data)

        VorpInv.subItem(data.source, "applemash", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Apple Mash", 5000)
        TriggerClientEvent("syn:applemash", data.source)
    end)

    VorpInv.RegisterUsableItem("banannamash", function(data)

        VorpInv.subItem(data.source, "banannamash", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Banana Mash", 5000)
        TriggerClientEvent("syn:banannamash", data.source)
    end)


    VorpInv.RegisterUsableItem("grapes", function(data)

        VorpInv.subItem(data.source, "grapes", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Grapes", 5000)
        TriggerClientEvent("syn:grapes", data.source)
    end)


    VorpInv.RegisterUsableItem("bacon", function(data)

        VorpInv.subItem(data.source, "bacon", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Bacon", 5000)
        TriggerClientEvent("syn:bacon", data.source)
    end)

    VorpInv.RegisterUsableItem("meat_mature", function(data)

        VorpInv.subItem(data.source, "meat_mature", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Cooked Venison Meat", 5000)
        TriggerClientEvent("syn:meat_mature", data.source)
    end)

    VorpInv.RegisterUsableItem("meat_bird", function(data)

        VorpInv.subItem(data.source, "meat_bird", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Cooked Bird Meat", 5000)
        TriggerClientEvent("syn:meat_bird", data.source)
    end)


    VorpInv.RegisterUsableItem("meat_gristly", function(data)

        VorpInv.subItem(data.source, "meat_gristly", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Pork Chops", 5000)
        TriggerClientEvent("syn:meat_gristly", data.source)
    end)

    VorpInv.RegisterUsableItem("bakedbread", function(data)

        VorpInv.subItem(data.source, "bakedbread", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Baked Bread", 5000)
        TriggerClientEvent("syn:bakedbread", data.source)
    end)

    VorpInv.RegisterUsableItem("bread", function(data)

        VorpInv.subItem(data.source, "bread", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Bread", 5000)
        TriggerClientEvent("syn:bread", data.source)
    end)

    VorpInv.RegisterUsableItem("tomato", function(data)

        VorpInv.subItem(data.source, "tomato", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate a Tomato", 5000)
        TriggerClientEvent("syn:tomato", data.source)
    end)

    VorpInv.RegisterUsableItem("dixonapple", function(data)

        VorpInv.subItem(data.source, "dixonapple", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You a Dixon Apple", 5000)
        TriggerClientEvent("syn:dixonapple", data.source)
    end)


    VorpInv.RegisterUsableItem("cocagum", function(data)

        VorpInv.subItem(data.source, "cocagum", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Cocagum", 5000)
        TriggerClientEvent("syn:cocagum", data.source)
    end)

    VorpInv.RegisterUsableItem("orange", function(data)

        VorpInv.subItem(data.source, "orange", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate a Orange", 5000)
        TriggerClientEvent("syn:orange", data.source)
    end)

    VorpInv.RegisterUsableItem("banana", function(data)

        VorpInv.subItem(data.source, "banana", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate a Banana", 5000)
        TriggerClientEvent("syn:banana", data.source)
    end)



    VorpInv.RegisterUsableItem("salmon_can", function(data)

        VorpInv.subItem(data.source, "salmon_can", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some salmon", 5000)
        TriggerClientEvent("syn:salmon", data.source)
    end)

    VorpInv.RegisterUsableItem("ginsengelixir", function(data)

        VorpInv.subItem(data.source, "ginsengelixir", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You drank a Ginseng Elixir", 5000)
        TriggerClientEvent("syn:ginsengelixir", data.source)
    end)

    VorpInv.RegisterUsableItem("carrotsoup", function(data)

        VorpInv.subItem(data.source, "carrotsoup", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Carrot Soup", 5000)
        TriggerClientEvent("syn:carrotsoup", data.source)
    end)

    VorpInv.RegisterUsableItem("chickensoup", function(data)

        VorpInv.subItem(data.source, "chickensoup", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You ate some Chicken Soup", 5000)
        TriggerClientEvent("syn:chickensoup", data.source)
    end)

   






    --synedits


    VorpInv.RegisterUsableItem("horsebrush", function(data)
        TriggerClientEvent("syn:brush", data.source)
    end)



    VorpInv.RegisterUsableItem("stim", function(data)

        VorpInv.subItem(data.source, "stim", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You gave your horse stimulants", 5000)
        TriggerClientEvent("syn:horsestimulant", data.source)
    end)

end)


RegisterNetEvent("syn:additem")
AddEventHandler("syn:additem", function(item)
    local _source = source
    VorpInv.addItem(source, item, 1)
end)














             




