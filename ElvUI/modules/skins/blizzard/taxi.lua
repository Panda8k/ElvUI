local E, L, V, P, G = unpack(select(2, ...));
local S = E:GetModule('Skins');

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.taxi ~= true then return; end
	
	TaxiFrame:StripTextures();
	TaxiFrame:CreateBackdrop('Transparent');
	TaxiFrame.backdrop:Point('TOPLEFT', 11, -12);
	TaxiFrame.backdrop:Point('BOTTOMRIGHT', -34, 75);
	
	TaxiPortrait:Kill();
	
	S:HandleCloseButton(TaxiCloseButton);
	
	TaxiRouteMap:CreateBackdrop('Default');
end

S:RegisterSkin('ElvUI', LoadSkin);