function ending_OnStart ()
	-- 1.�܂��摜��ǂݍ���
	G.background   = loadGraphic("gfx/Bg_ending.png");

	-- 2.�A�N�^�[��\������B
	A.background   = createActor(G.background, 640/2, 480/2, 11);
end

function ending_OnStep ()
    if( 1 == getJoyPressCount( BUTTON_DOWN ) ) then
    	--���{�^��
    	changeScene("staff")
    end
end

function ending_OnClose ()
	-- 3.�\�������摜����������
	vanish(A.background);

	-- 4.�摜���J������
	deleteGraphic(G.background);
end
