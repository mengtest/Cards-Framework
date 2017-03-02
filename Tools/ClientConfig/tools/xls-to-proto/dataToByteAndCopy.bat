SET CONFIG_RES_ROOT=..\..\..\client\Assets\Resources\Config
SET SRC_SCRIPT_ROOT=..\..\client\Assets\Scripts\Config
SET SCRIPT_ROOT=..\..\..\client\Assets\Scripts\FXQ
SET RESOURCE_SCRIPT_ROOT=..\..\..\client\Assets\Resources\UI

rem øΩ±¥◊ ‘¥≈‰÷√
xcopy  ..\..\client\Assets\StreamingAssets\Config\ActivityConfig.bytes   %CONFIG_RES_ROOT%\Activity\ActivityConfig.bytes     /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\AvatarConfig.bytes   %CONFIG_RES_ROOT%\Avatar\AvatarConfig.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\AvatarCultivate.bytes   %CONFIG_RES_ROOT%\AvatarCultivate\AvatarCultivate.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\AvatarSkill.bytes   %CONFIG_RES_ROOT%\AvatarSkill\AvatarSkill.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\CoinConfig.bytes   %CONFIG_RES_ROOT%\ShopItem\CoinConfig.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\DiamondConfig.bytes   %CONFIG_RES_ROOT%\ShopItem\DiamondConfig.bytes       /v  /D  /s  /y  
::xcopy  ..\..\client\Assets\StreamingAssets\Config\ObjectConfig.bytes   %CONFIG_RES_ROOT%\ObjectConfig.bytes       /v  /D  /s  /y 
::xcopy  ..\..\client\Assets\StreamingAssets\Config\OtherConfig.bytes   %CONFIG_RES_ROOT%\Activity\OtherConfig.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\PhysicalStrengthConfig.bytes  %CONFIG_RES_ROOT%\PhyStrength\PhysicalStrengthConfig.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\PlayerLevelConfig.bytes   %CONFIG_RES_ROOT%\PlayerLevel\PlayerLevelConfig.bytes       /v  /D  /s  /y  
xcopy  ..\..\client\Assets\StreamingAssets\Config\PropConfig.bytes   %CONFIG_RES_ROOT%\Prop\PropConfig.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\RoleConfig.bytes   %CONFIG_RES_ROOT%\ShopItem\RoleConfig.bytes       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\RoomConfig.bytes   %CONFIG_RES_ROOT%\RoomConfig\RoomConfig.bytes      /v  /D  /s  /y 
::xcopy  ..\..\client\Assets\StreamingAssets\Config\ScreeningsConfig.bytes   %CONFIG_RES_ROOT%\       /v  /D  /s  /y 
xcopy  ..\..\client\Assets\StreamingAssets\Config\SignatureBookConfig.bytes   %CONFIG_RES_ROOT%\SignatureBook\SignatureBookConfig.bytes        /v  /D  /s  /y 

rem øΩ±¥Ω≈±æ
xcopy  %SRC_SCRIPT_ROOT%\ActivityConfig.cs   %SCRIPT_ROOT%\Game\Notice\ActivityConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\ActivityConfigLoader.cs   %SCRIPT_ROOT%\Game\Notice\ActivityConfigLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\AvatarConfig.cs   %SCRIPT_ROOT%\Game\Avatar\AvatarConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\AvatarConfigLoader.cs   %SCRIPT_ROOT%\Game\Avatar\AvatarConfigLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\AvatarCultivate.cs   %SCRIPT_ROOT%\Modules\RoleDetail\AvatarCultivate.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\AvatarCultivateLoader.cs   %SCRIPT_ROOT%\Modules\RoleDetail\AvatarCultivateLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\AvatarSkill.cs   %SCRIPT_ROOT%\Modules\RoleDetail\AvatarSkill.cs      /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\AvatarSkillLoader.cs   %SCRIPT_ROOT%\Modules\RoleDetail\AvatarSkillLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\CoinConfig.cs   %SCRIPT_ROOT%\Game\Shop\CoinConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\CoinConfigLoader.cs  %SCRIPT_ROOT%\Game\Shop\CoinConfigLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\DiamondConfig.cs   %SCRIPT_ROOT%\Game\Shop\DiamondConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\DiamondConfigLoader.cs   %SCRIPT_ROOT%\Game\Shop\DiamondConfigLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\ObjectConfig.cs   %SCRIPT_ROOT%\Game\Object\ObjectConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\ObjectConfigLoader.cs   %SCRIPT_ROOT%\Game\Object\ObjectConfigLoader.cs       /v  /D  /s  /y 

::xcopy  %SRC_SCRIPT_ROOT%\OtherConfig.cs   %SCRIPT_ROOT%\Game\OtherConfig\OtherConfig.cs       /v  /D  /s  /y 
::xcopy  %SRC_SCRIPT_ROOT%\OtherConfigLoader.cs   %SCRIPT_ROOT%\Game\OtherConfig\OtherConfigLoader.cs      /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\PhysicalStrengthConfig.cs   %SCRIPT_ROOT%\Game\PhysicalStrength\PhysicalStrengthConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\PhysicalStrengthConfigLoader.cs  %SCRIPT_ROOT%\Game\PhysicalStrength\PhysicalStrengthConfigLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\PlayerLevelConfig.cs   %SCRIPT_ROOT%\Game\PlayerLevel\PlayerLevelConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\PlayerLevelConfigLoader.cs   %SCRIPT_ROOT%\Game\PlayerLevel\PlayerLevelConfigLoader.cs       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\PropConfig.cs   %RESOURCE_SCRIPT_ROOT%\Scene_Battle\Scripts\PropConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\PropConfigLoader.cs   %RESOURCE_SCRIPT_ROOT%\Scene_Battle\Scripts\PropConfigLoader.cs      /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\RoleConfig.cs   %SCRIPT_ROOT%\Game\Shop\RoleConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\RoleConfigLoader.cs   %SCRIPT_ROOT%\Game\Shop\RoleConfigLoader.cs      /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\RoomConfig.cs   %RESOURCE_SCRIPT_ROOT%\Scene_Choice\Scripts\RoomConfig.cs     /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\RoomConfigLoader.cs   %RESOURCE_SCRIPT_ROOT%\Scene_Choice\Scripts\RoomConfigLoader.cs      /v  /D  /s  /y 

::xcopy  %SRC_SCRIPT_ROOT%\ScreeningsConfig.cs   %SCRIPT_ROOT%\Activity\ActivityConfig.bytes       /v  /D  /s  /y 
::xcopy  %SRC_SCRIPT_ROOT%\ScreeningsConfigLoader.cs   %SCRIPT_ROOT%\Activity\ActivityConfig.bytes       /v  /D  /s  /y 

xcopy  %SRC_SCRIPT_ROOT%\SignatureBookConfig.cs  %SCRIPT_ROOT%\Game\SignatureBook\SignatureBookConfig.cs       /v  /D  /s  /y 
xcopy  %SRC_SCRIPT_ROOT%\SignatureBookConfigLoader.cs  %SCRIPT_ROOT%\Game\SignatureBook\SignatureBookConfigLoader.cs       /v  /D  /s  /y 
