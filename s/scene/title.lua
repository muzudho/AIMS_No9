function title_OnStart ()
	-- 1.�܂��摜��ǂݍ���
	G.background   = loadGraphic("gfx/Bg_title.png");

	-- 2.�A�N�^�[��\������B
	A.background   = createActor(G.background, 640/2, 480/2, 11);
end

function title_OnStep ()
    if( 1 == getJoyPressCount( BUTTON_RIGHT ) ) then
    	--�E�{�^���i�Â�����j
    	changeScene("load")
    end
    
    if( 1 == getJoyPressCount( BUTTON_DOWN ) ) then
    	--���{�^���i�͂��߂���j
    	changeScene("name")
    end
end

function title_OnClose ()
	-- 3.�\�������摜����������
	vanish(A.background);

	-- 4.�摜���J������
	deleteGraphic(G.background);
end
