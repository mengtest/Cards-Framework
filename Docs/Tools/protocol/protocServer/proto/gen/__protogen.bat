@echo off

cd ..\
protobuf-net\ProtoGen\protogen.exe ^
-i:SP_Account.txt ^
-i:SP_Activity.txt ^
-i:SP_Appendattr.txt ^
-i:SP_Auction.txt ^
-i:SP_battle.txt ^
-i:SP_bookmark.txt ^
-i:SP_buff.txt ^
-i:SP_CellphoneGift.txt ^
-i:SP_Chat.txt ^
-i:SP_ChooseArea.txt ^
-i:SP_Common.txt ^
-i:SP_DressableExData.txt ^
-i:SP_EquipRefin.txt ^
-i:SP_Fashion.txt ^
-i:SP_FbDbg.txt ^
-i:SP_FBSection.txt ^
-i:SP_FBServerInfo.txt ^
-i:SP_ForgeEquip.txt ^
-i:SP_GameGuard.txt ^
-i:SP_Gang.txt ^
-i:SP_Giftbag.txt ^
-i:SP_Gmtool.txt ^
-i:SP_handbook.txt ^
-i:SP_IntensifyAttribute.txt ^
-i:SP_Item.txt ^
-i:SP_korea.txt ^
-i:SP_ladder.txt ^
-i:SP_Lover.txt ^
-i:SP_Materials.txt ^
-i:SP_messagesource.txt ^
-i:SP_NewSkill.txt ^
-i:SP_Otheractivity.txt ^
-i:SP_package.txt ^
-i:SP_payment.txt ^
-i:SP_Pet.txt ^
-i:SP_Player.txt ^
-i:SP_Playerappend.txt ^
-i:SP_PlayerDeviceInfo.txt ^
-i:SP_Playermanager.txt ^
-i:SP_Queen.txt ^
-i:SP_Relics.txt ^
-i:SP_repairsecond.txt ^
-i:SP_Reward.txt ^
-i:SP_rewardtask.txt ^
-i:SP_Risedegree.txt ^
-i:SP_RobGoods.txt ^
-i:SP_Scene.txt ^
-i:SP_sealAccount.txt ^
-i:SP_Secprofession.txt ^
-i:SP_SevenSurprise.txt ^
-i:SP_skill.txt ^
-i:SP_SweepFB.txt ^
-i:SP_systemset.txt ^
-i:SP_task.txt ^
-i:SP_tasklogtemp.txt ^
-i:sp_TestAccount.txt ^
-i:SP_Title.txt ^
-i:SP_topfight.txt ^
-i:SP_Trade.txt ^
-i:SP_Treasure.txt ^
-i:SP_treasureBox.txt ^
-i:SP_vip.txt ^
-i:SP_Wishpond.txt ^
-i:SP_YuXBao.txt ^
-o:PBMessage\PBMessage.cs -ns:PBMessage
cd gen
