function talk_OnStart ()
	-- 1.�܂��摜��ǂݍ���
	G.background   = loadGraphic("gfx/Bg_talk.png");

	-- 2.�A�N�^�[��\������B
	A.background   = createActor(G.background, 640/2, 480/2, 11);
end

function talk_OnStep ()

	--�ŏI�X�e�[�W�N���A�[�H
    if( 1 == getJoyPressCount( BUTTON_RIGHT ) ) then
    	--�E�{�^���i�m�n�j
    	changeScene("stgsel")
    end

    if( 1 == getJoyPressCount( BUTTON_DOWN ) ) then
    	--���{�^���i�x�d�r�j
    	changeScene("ending")
    end
end

function talk_OnClose ()
	-- 3.�\�������摜����������
	vanish(A.background);

	-- 4.�摜���J������
	deleteGraphic(G.background);
end
