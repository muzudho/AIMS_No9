function stgsel_OnStart ()
	-- 1.�܂��摜��ǂݍ���
	G.background   = loadGraphic("gfx/Bg_stgsel.png");

	-- 2.�A�N�^�[��\������B
	A.background   = createActor(G.background, 640/2, 480/2, 11);
end

function stgsel_OnStep ()
    if( 1 == getJoyPressCount( BUTTON_DOWN ) ) then
    	--���{�^��
    	changeScene("chrsel")
    end
end

function stgsel_OnClose ()
	-- 3.�\�������摜����������
	vanish(A.background);

	-- 4.�摜���J������
	deleteGraphic(G.background);
end
