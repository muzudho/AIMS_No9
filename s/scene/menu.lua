function menu_OnStart ()
	-- 1.�܂��摜��ǂݍ���
	G.background   = loadGraphic("gfx/Bg_menu.png");

	-- 2.�A�N�^�[��\������B
	A.background   = createActor(G.background, 640/2, 480/2, 11);
end

function menu_OnStep ()
    if( 1 == getJoyPressCount( BUTTON_RIGHT ) ) then
    	--�E�{�^���i�M�u�A�b�v�j
    	changeScene("stgsel")
    end
    
    if( 1 == getJoyPressCount( BUTTON_DOWN ) ) then
    	--���{�^���i����j
    	changeScene("battle")
    end
end

function menu_OnClose ()
	-- 3.�\�������摜����������
	vanish(A.background);

	-- 4.�摜���J������
	deleteGraphic(G.background);
end
