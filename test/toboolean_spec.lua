--[[
    test/toboolean_spec.lua
    lua-toboolean
    Created by Masatoshi Teruya on 18/04/25.
--]]
local toboolean = require('toboolean');

describe('toboolean:', function()
    for _, v in ipairs({ '1', 't', 'T', 'true', 'TRUE', 'True' }) do
        it( 'can convert "' .. v .. '" to true', function()
            local bol, err = toboolean( v );

            assert( err == nil, err );
            assert( bol == true );
        end)
    end

    for _, v in ipairs({ '0', 'f', 'F', 'false', 'FALSE', 'False' }) do
        it( 'can convert "' .. v .. '" to false', function()
            local bol, err = toboolean( v );

            assert( err == nil, err );
            assert( toboolean( v ) == false );
        end)
    end
end)
