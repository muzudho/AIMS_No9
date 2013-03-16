function battle_OnStart ()
	-- 1.�܂��摜��ǂݍ���
	G.background   = loadGraphic("gfx/Bg_battle.png");

	-- 2.�A�N�^�[��\������B
	A.background   = createActor(G.background, 640/2, 480/2, 11);
end

function battle_OnStep ()
    if( 1 == getJoyPressCount( BUTTON_RIGHT ) ) then
    	--�E�{�^���i�}�b�v���J�����j
    	changeScene("map")
    end
    
    if( 1 == getJoyPressCount( BUTTON_DOWN ) ) then
    	--���{�^���i�����j
    	changeScene("lose")
    end
	
    if( 1 == getJoyPressCount( BUTTON_LEFT ) ) then
    	--���{�^���i�����j
    	changeScene("win")
    end
    
    if( 1 == getJoyPressCount( BUTTON_UP ) ) then
    	--��{�^���i���j���[���J�����j
    	changeScene("menu")
    end
end

function battle_OnClose ()
	-- 3.�\�������摜����������
	vanish(A.background);

	-- 4.�摜���J������
	deleteGraphic(G.background);
end
