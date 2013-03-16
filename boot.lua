--[[

  prototype boot.lua
  �����AIMS�ŐV�K�ɃQ�[�����쐬����ۂ�
  �v���g�^�C�v�ƂȂ�t�@�C���ł��B
  �K���ɏ��������Ă����p���������B

]]

-------------------------------------------
-- common�Ăяo��
-------------------------------------------

-- AIMS�̃t�@�C���͑S��prequire�֐��œǂݍ���ł��������B
-- �r���g�C����require���g���܂����A
-- require�ł̓p�b�P�[�W�t�@�C���̒����X�L�������Ă���܂���B
prequire("common.lua");

-------------------------------------------
-- �萔������
-------------------------------------------

G = {}; -- �O���t�B�b�N�n���h���͂��̉��ɂԂ牺����
S = {}; -- �T�E���h�n���h���͂��̉��ɗ�
A = {}; -- �S�̂��爵�������A�N�^�[�̃n���h���͂��̉���

-- ��������ăe�[�u���̉��ɕ����Ă����ƐF�X�y�ł�

-------------------------------------------
-- ���L�֐��Ăяo��
-------------------------------------------
--�Q�[�����ŋ��L����֐���prequire���܂��B
prequire("s/scene/battle.lua");
prequire("s/scene/chrsel.lua");
prequire("s/scene/ending.lua");
prequire("s/scene/load.lua");
prequire("s/scene/lose.lua");
prequire("s/scene/map.lua");
prequire("s/scene/menu.lua");
prequire("s/scene/name.lua");
prequire("s/scene/prolog.lua");
prequire("s/scene/staff.lua");
prequire("s/scene/stgsel.lua");
prequire("s/scene/talk.lua");
prequire("s/scene/title.lua");
prequire("s/scene/win.lua");

-------------------------------------------
-- �Q�[���V�[���Ăяo��
-------------------------------------------
--�Q�[���̃V�[���X�N���v�g��prequire���܂��B

-------------------------------------------
-- OnLoad�@�N������ɌĂ΂��
-------------------------------------------
function OnLoad()

end

-------------------------------------------
-- OnStart
-------------------------------------------

-- �N�������boot�V�[�����Ă΂�܂��B
function boot_OnStart()
	cls(); 
	clearLayerSettings();
end

-------------------------------------------
-- OnStep
-------------------------------------------
function boot_OnStep()
	changeScene("title")
end
-------------------------------------------
-- OnClose
-------------------------------------------
function boot_OnClose()
	cls();
end

-------------------------------------------
-- OnVanish �A�v���I�����O�ɌĂ΂��
-------------------------------------------
function OnVanish()
	deleteAllGraphic(G);	-- �O���t�B�b�N�폜
	deleteAllSound(S);	-- �T�E���h�폜
end
