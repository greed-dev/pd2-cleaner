if Cleaner then
	return
end

Cleaner = {}
Cleaner.ModPath = ModPath

--Add localized strings for menu
Hooks:Add("LocalizationManagerPostInit", "Cleaner_MenuLocalization", function(loc)
	loc:load_localization_file(Cleaner.ModPath .. "/menu/loc.json")
end)

--Initialize menu
Hooks:Add("MenuManagerInitialize", "Cleaner_MenuManagerInitialize", function(menu_manager)
        
    MenuCallbackHandler.callback_cleaner_reset_offshore = function()
        --Wipe offshore
        local confirm_title = "Confirm offshore wipe"
        local confirm_message = "Are you sure you want to wipe all of your offshore money?\nThis CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:set_offshore(0) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)
    end
    
    MenuCallbackHandler.callback_cleaner_remove_hundred_million_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove one hundred million dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_offshore(100000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_one_billion_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove one billion dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_offshore(1000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_ten_billion_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove ten billion dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_offshore(10000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_hundred_billion_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove hundred billion dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_offshore(100000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_one_trillion_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove one trillion dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_offshore(1000000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_ten_trillion_offshore = function()

        local confirm_title = "Confirm offshore removal"
        local confirm_message = "Are you sure you want to remove ten trillion dollars offshore? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_offshore(10000000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    
    --Spending
    ------------------------------------------------------------------------------------
    MenuCallbackHandler.callback_cleaner_reset_spending_cash = function()
        --Wipe spending
        local confirm_title = "Confirm spending cash wipe"
        local confirm_message = "Are you sure you want to wipe all of your spending cash?\nThis CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:set_spending(0) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)
    end
    
    MenuCallbackHandler.callback_cleaner_remove_ten_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove ten million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_spending(10000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_hundred_million_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove hundred million dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_spending(100000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_one_billion_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove one billion dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_spending(1000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_ten_billion_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove ten billion dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_spending(10000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_hundred_billion_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove hundred billion dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_spending(100000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_one_trillion_spending = function()

        local confirm_title = "Confirm spending cash removal"
        local confirm_message = "Are you sure you want to remove one trillion dollars spending cash? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_spending(1000000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end

        --Continental Coins
    ------------------------------------------------------------------------------------
    MenuCallbackHandler.callback_cleaner_reset_cc = function()
        --Wipe spending
        local confirm_title = "Confirm continental coins wipe"
        local confirm_message = "Are you sure you want to wipe all of your continental coins?\nThis CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:set_cc(0) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)
    end
    
    MenuCallbackHandler.callback_cleaner_remove_ten_million_cc = function()

        local confirm_title = "Confirm continental coins removal"
        local confirm_message = "Are you sure you want to remove ten million continental coins? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = Application:digest_value(managers.custom_safehouse._global.total, false),
                callback = function() Cleaner:deduct_cc(10000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_hundred_million_cc = function()

        local confirm_title = "Confirm continental coins removal"
        local confirm_message = "Are you sure you want to remove hundred million continental coins? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_cc(100000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_one_billion_cc = function()

        local confirm_title = "Confirm continental coins removal"
        local confirm_message = "Are you sure you want to remove one billion continental coins? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_cc(1000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_ten_billion_cc = function()

        local confirm_title = "Confirm continental coins removal"
        local confirm_message = "Are you sure you want to remove ten billion continental coins? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_cc(10000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_hundred_billion_cc = function()

        local confirm_title = "Confirm continental coins removal"
        local confirm_message = "Are you sure you want to remove hundred billion continental coins? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_cc(100000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end
    
    MenuCallbackHandler.callback_cleaner_remove_one_trillion_cc = function()

        local confirm_title = "Confirm continental coins removal"
        local confirm_message = "Are you sure you want to remove one trillion continental coins? This CANNOT be undone."
        local confirm_options = {
            [1] = {
                text = "Yes",
                callback = function() Cleaner:deduct_cc(1000000000000) end
            },
            [2] = {
                text = "No",
                is_cancel_button = true
            }
        }
        
        Cleaner:ConfirmationDialog(confirm_title, confirm_message, confirm_options)        
    end


    ------------------------------------------------------------------------------------
    
    --Deduct offshore
    --managers.money:deduct_from_offshore(deduct_amount)
    
    --Deduct spending
    --managers.money:deduct_from_total(deduct_amount)
    
    MenuHelper:LoadFromJsonFile(Cleaner.ModPath .. "/menu/menu.json", Cleaner, Cleaner.MenuData)
    
end)

function Cleaner:ConfirmationDialog(title, message, options)
	local menu = QuickMenu:new(title, message, options)
	menu:Show()    
end

--If you're going to cheat, you may as well download Pizza Pulverization. Don't fuck around.
function Cleaner:set_offshore(amount)
    managers.money:_set_offshore(amount)
end

function Cleaner:set_spending(amount)
    managers.money:_set_total(amount)
end

function Cleaner:deduct_offshore(amount)
    managers.money:_deduct_from_offshore(amount)
end

function Cleaner:deduct_spending(amount)
    managers.money:_deduct_from_total(amount)
end

function Cleaner:set_cc(amount)
    Global.custom_safehouse_manager.total = Application:digest_value(amount, true)
end

function Cleaner:deduct_cc(amount)
    Coins = Application:digest_value(managers.custom_safehouse._global.total)

    amount = Coins - amount

    if amount < 0 then
        amount = 0
    end

    Cleaner:set_cc(amount)
end