# This is the telescope including BGO


Volume ShieldedTelescope
ShieldedTelescope.Material vacuum
ShieldedTelescope.Visibility 0
ShieldedTelescope.Color 8
#.71 was added for the bottom EMI guard rings
ShieldedTelescope.Shape BRIK {CryoBaseX+3.5} {CryoBaseY+3.5} {ShieldedHeight+BGOBotZ+.71+.014}
#ShieldedTelescope.Rotation 0.0 0.0 90.0
#ShieldedTelescope.Position 0.0 {PIP_TRD2_height/2-21.7} {ShieldedHeight+BGOBotZ+.71+PIP_depth/2+PIP_aluminum_thickness}
#ShieldedTelescope.Mother PIPbody

!********************************************
!              THE BGO shield
!********************************************
#All of the crystals on the bottom of the ACS shield are different sizes which is really fun

Shape BRIK BGObottomHouse
#BGObottomHouse.Parameters CryoBaseX CryoBaseY 
BGObottomHouse.Parameters CryoBaseX CryoBaseY BGOBotZ
Shape BRIK BGObottomCrystalCavity1
BGObottomCrystalCavity1.Parameters {BotBGOLength1+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth1+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity1Ori
BGObottomCrystalCavity1Ori.Position {-CryoBaseX+BotBGOLength1+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOWidth1-CrystalWrapping-BotBGOtoHouseGapY} {0.0}

Shape Subtraction BGObottomMinusHole1
BGObottomMinusHole1.Parameters BGObottomHouse BGObottomCrystalCavity1 BGObottomCrystalCavity1Ori

Shape BRIK BGObottomCrystalCavity2
BGObottomCrystalCavity2.Parameters {BotBGOLength2+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth2+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity2Ori
BGObottomCrystalCavity2Ori.Position {-CryoBaseX+BotBGOLength2+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-2*CrystalWrapping-2*BotBGOWidth1-BotBGOtoHouseGapY-BGOcrystalGap-BotBGOWidth2} {0.0}

Shape Subtraction BGObottomMinusHole2
BGObottomMinusHole2.Parameters BGObottomMinusHole1 BGObottomCrystalCavity2 BGObottomCrystalCavity2Ori

Shape BRIK BGObottomCrystalCavity3
BGObottomCrystalCavity3.Parameters {BotBGOLength3+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth3+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity3Ori
BGObottomCrystalCavity3Ori.Position {-CryoBaseX+BotBGOLength3+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-5*CrystalWrapping-2*BGOcrystalGap-2*BotBGOWidth2-BotBGOWidth3} {0.0}

Shape Subtraction BGObottomMinusHole3
BGObottomMinusHole3.Parameters BGObottomMinusHole2 BGObottomCrystalCavity3 BGObottomCrystalCavity3Ori

Shape BRIK BGObottomCrystalCavity4
BGObottomCrystalCavity4.Parameters {BotBGOLength4+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth4+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity4Ori
BGObottomCrystalCavity4Ori.Position {-CryoBaseX+BotBGOLength4+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-7*CrystalWrapping-3*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-BotBGOWidth4} {0.0}

Shape Subtraction BGObottomMinusHole4
BGObottomMinusHole4.Parameters BGObottomMinusHole3 BGObottomCrystalCavity4 BGObottomCrystalCavity4Ori

# Empty Gap for the coldstrap
Shape BRIK ColdStrapHole
ColdStrapHole.Parameters {0.5*ColdStrapHoleLength} {0.5*ColdStrapHoleWidth} {BGOBotZ+.1}
Orientation ColdStrapHoleOri
#ColdStrapHoleOri.Position {CryoBaseX-2*BotBGOLength4-BotBGOtoHouseGapX-BGOcrystalGap-ColdStrapHoleLength} {CryoBaseY-2*BotBGOWidth1-BotBGOtoHouseGapY-3*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-BotBGOWidth4} {0.0}
ColdStrapHoleOri.Position {0.0} {CryoBaseY-0.5*ColdStrapHoleWidth-12.5} {0.0}

Shape Subtraction BGObottomMinusColdStrapHole
BGObottomMinusColdStrapHole.Parameters BGObottomMinusHole4 ColdStrapHole ColdStrapHoleOri

Shape BRIK BGObottomCrystalCavity5
BGObottomCrystalCavity5.Parameters {BotBGOLength5+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth5+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity5Ori
BGObottomCrystalCavity5Ori.Position {-CryoBaseX+BotBGOLength5+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-9*CrystalWrapping-4*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-2*BotBGOWidth4-BotBGOWidth5} {0.0}

Shape Subtraction BGObottomMinusHole5
BGObottomMinusHole5.Parameters BGObottomMinusColdStrapHole BGObottomCrystalCavity5 BGObottomCrystalCavity5Ori

Shape BRIK BGObottomCrystalCavity6
BGObottomCrystalCavity6.Parameters {BotBGOLength6+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth6+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity6Ori
BGObottomCrystalCavity6Ori.Position {CryoBaseX-BotBGOLength6-0.5*CrystalWrapping-BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOWidth1-CrystalWrapping-BotBGOtoHouseGapY} {0.0}

Shape Subtraction BGObottomMinusHole6
BGObottomMinusHole6.Parameters BGObottomMinusHole5 BGObottomCrystalCavity6 BGObottomCrystalCavity6Ori

Shape BRIK BGObottomCrystalCavity7
BGObottomCrystalCavity7.Parameters {BotBGOLength7+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth7+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity7Ori
BGObottomCrystalCavity7Ori.Position {CryoBaseX-BotBGOLength7-0.5*CrystalWrapping-BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-2*CrystalWrapping-2*BotBGOWidth6-BotBGOtoHouseGapY-BGOcrystalGap-BotBGOWidth7} {0.0}

Shape Subtraction BGObottomMinusHole7
BGObottomMinusHole7.Parameters BGObottomMinusHole6 BGObottomCrystalCavity7 BGObottomCrystalCavity7Ori

Shape BRIK BGObottomCrystalCavity8
BGObottomCrystalCavity8.Parameters {BotBGOLength8+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth8+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity8Ori
BGObottomCrystalCavity8Ori.Position {CryoBaseX-BotBGOLength8-0.5*CrystalWrapping-BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth6-5*CrystalWrapping-2*BGOcrystalGap-2*BotBGOWidth7-BotBGOWidth8} {0.0}

Shape Subtraction BGObottomMinusHole8
BGObottomMinusHole8.Parameters BGObottomMinusHole7 BGObottomCrystalCavity8 BGObottomCrystalCavity8Ori

Shape BRIK BGObottomCrystalCavity9
BGObottomCrystalCavity9.Parameters {BotBGOLength9+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth9+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity9Ori
BGObottomCrystalCavity9Ori.Position {CryoBaseX-BotBGOLength9-0.5*CrystalWrapping-BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth6-7*CrystalWrapping-3*BGOcrystalGap-2*BotBGOWidth7-2*BotBGOWidth8-BotBGOWidth9} {0.0}

Shape Subtraction BGObottomMinusHole9
BGObottomMinusHole9.Parameters BGObottomMinusHole8 BGObottomCrystalCavity9 BGObottomCrystalCavity9Ori

Shape BRIK BGObottomCrystalCavity10
BGObottomCrystalCavity10.Parameters {BotBGOLength10+0.5*CrystalWrapping+BGOBotShieldSipmPlateThick} {BotBGOWidth10+CrystalWrapping} {BGObottomThick+CrystalWrapping}
Orientation BGObottomCrystalCavity10Ori
BGObottomCrystalCavity10Ori.Position {CryoBaseX-BotBGOLength10-0.5*CrystalWrapping-BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth6-9*CrystalWrapping-4*BGOcrystalGap-2*BotBGOWidth7-2*BotBGOWidth8-2*BotBGOWidth9-BotBGOWidth10} {0.0}

Shape Subtraction BGObottomMinusHole10
BGObottomMinusHole10.Parameters BGObottomMinusHole9 BGObottomCrystalCavity10 BGObottomCrystalCavity10Ori

Volume BGObottomHousing
BGObottomHousing.Material al6061
BGObottomHousing.Visibility 1
BGObottomHousing.Color 63
BGObottomHousing.Shape BGObottomMinusHole10
BGObottomHousing.Mother ShieldedTelescope
BGObottomHousing.Position 0.0 0.0 {-ShieldedHeight-0.71-.014}

# Adding the BGO to the holes
# Again, annoying because they are all different sizes. Using the same sizes of the holes but will subtract out the teflon wrapping which is .1 cm on each side
# Getting overlaps when subtracting out the wrapping that makes no sense so I'm removing it

Volume BGObotCrystal1_ACTIVE
BGObotCrystal1_ACTIVE.Material bgo
BGObotCrystal1_ACTIVE.Visibility 1
BGObotCrystal1_ACTIVE.Color 2
BGObotCrystal1_ACTIVE.Shape BRIK {BotBGOLength1} {BotBGOWidth1} {BGObottomThick}
BGObotCrystal1_ACTIVE.Mother ShieldedTelescope
BGObotCrystal1_ACTIVE.Position {-CryoBaseX+BotBGOLength1+2*BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOWidth1-CrystalWrapping-BotBGOtoHouseGapY} {-ShieldedHeight-0.71}

Volume BGObotCrystal2_ACTIVE
BGObotCrystal2_ACTIVE.Material bgo
BGObotCrystal2_ACTIVE.Visibility 1
BGObotCrystal2_ACTIVE.Color 6
BGObotCrystal2_ACTIVE.Shape BRIK {BotBGOLength2} {BotBGOWidth2} {BGObottomThick}
BGObotCrystal2_ACTIVE.Mother ShieldedTelescope
BGObotCrystal2_ACTIVE.Position {-CryoBaseX+BotBGOLength2+2*BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-2*CrystalWrapping-2*BotBGOWidth1-BotBGOtoHouseGapY-BGOcrystalGap-BotBGOWidth2} {-ShieldedHeight-.71}


Volume BGObotCrystal3_ACTIVE
BGObotCrystal3_ACTIVE.Material bgo
BGObotCrystal3_ACTIVE.Visibility 1
BGObotCrystal3_ACTIVE.Color 6
BGObotCrystal3_ACTIVE.Shape BRIK {BotBGOLength3} {BotBGOWidth3} {BGObottomThick}
BGObotCrystal3_ACTIVE.Mother ShieldedTelescope
BGObotCrystal3_ACTIVE.Position {-CryoBaseX+BotBGOLength3+2*BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-5*CrystalWrapping-2*BGOcrystalGap-2*BotBGOWidth2-BotBGOWidth3} {-ShieldedHeight-.71}

Volume BGObotCrystal4_ACTIVE
BGObotCrystal4_ACTIVE.Material bgo
BGObotCrystal4_ACTIVE.Visibility 1
BGObotCrystal4_ACTIVE.Color 6
BGObotCrystal4_ACTIVE.Shape BRIK {BotBGOLength4} {BotBGOWidth4} {BGObottomThick}
BGObotCrystal4_ACTIVE.Mother ShieldedTelescope
BGObotCrystal4_ACTIVE.Position {-CryoBaseX+BotBGOLength4+2*BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-7*CrystalWrapping-3*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-BotBGOWidth4} {-ShieldedHeight-.71}

Volume BGObotCrystal5_ACTIVE
BGObotCrystal5_ACTIVE.Material bgo
BGObotCrystal5_ACTIVE.Visibility 1
BGObotCrystal5_ACTIVE.Color 6
BGObotCrystal5_ACTIVE.Shape BRIK {BotBGOLength5} {BotBGOWidth5} {BGObottomThick}
BGObotCrystal5_ACTIVE.Mother ShieldedTelescope
BGObotCrystal5_ACTIVE.Position {-CryoBaseX+BotBGOLength5+2*BGOBotShieldSipmPlateThick+BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-9*CrystalWrapping-4*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-2*BotBGOWidth4-BotBGOWidth5} {-ShieldedHeight-.71}

Volume BGObotCrystal6_ACTIVE
BGObotCrystal6_ACTIVE.Material bgo
BGObotCrystal6_ACTIVE.Visibility 1
BGObotCrystal6_ACTIVE.Color 6
BGObotCrystal6_ACTIVE.Shape BRIK {BotBGOLength6} {BotBGOWidth6} {BGObottomThick}
BGObotCrystal6_ACTIVE.Mother ShieldedTelescope
BGObotCrystal6_ACTIVE.Position {CryoBaseX-BotBGOLength6-2*BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOWidth6-CrystalWrapping-BotBGOtoHouseGapY} {-ShieldedHeight-.71}


Volume BGObotCrystal7_ACTIVE
BGObotCrystal7_ACTIVE.Material bgo
BGObotCrystal7_ACTIVE.Visibility 1
BGObotCrystal7_ACTIVE.Color 6
BGObotCrystal7_ACTIVE.Shape BRIK {BotBGOLength7} {BotBGOWidth7} {BGObottomThick}
BGObotCrystal7_ACTIVE.Mother ShieldedTelescope
BGObotCrystal7_ACTIVE.Position {CryoBaseX-BotBGOLength7-2*BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-2*CrystalWrapping-2*BotBGOWidth6-BotBGOtoHouseGapY-BGOcrystalGap-BotBGOWidth7} {-ShieldedHeight-.71}

Volume BGObotCrystal8_ACTIVE
BGObotCrystal8_ACTIVE.Material bgo
BGObotCrystal8_ACTIVE.Visibility 1
BGObotCrystal8_ACTIVE.Color 6
BGObotCrystal8_ACTIVE.Shape BRIK {BotBGOLength8} {BotBGOWidth8} {BGObottomThick}
BGObotCrystal8_ACTIVE.Mother ShieldedTelescope
BGObotCrystal8_ACTIVE.Position {CryoBaseX-BotBGOLength8-2*BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth6-5*CrystalWrapping-2*BGOcrystalGap-2*BotBGOWidth7-BotBGOWidth8} {-ShieldedHeight-.71}

Volume BGObotCrystal9_ACTIVE
BGObotCrystal9_ACTIVE.Material bgo
BGObotCrystal9_ACTIVE.Visibility 1
BGObotCrystal9_ACTIVE.Color 6
BGObotCrystal9_ACTIVE.Shape BRIK {BotBGOLength9} {BotBGOWidth9} {BGObottomThick}
BGObotCrystal9_ACTIVE.Mother ShieldedTelescope
BGObotCrystal9_ACTIVE.Position {CryoBaseX-BotBGOLength9-2*BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth6-7*CrystalWrapping-3*BGOcrystalGap-2*BotBGOWidth7-2*BotBGOWidth8-BotBGOWidth9} {-ShieldedHeight-.71}

Volume BGObotCrystal10_ACTIVE
BGObotCrystal10_ACTIVE.Material bgo
BGObotCrystal10_ACTIVE.Visibility 1
BGObotCrystal10_ACTIVE.Color 6
BGObotCrystal10_ACTIVE.Shape BRIK {BotBGOLength10} {BotBGOWidth10} {BGObottomThick}
BGObotCrystal10_ACTIVE.Mother ShieldedTelescope
BGObotCrystal10_ACTIVE.Position {CryoBaseX-BotBGOLength10-2*BGOBotShieldSipmPlateThick-BotBGOtoHouseGapX} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth6-9*CrystalWrapping-4*BGOcrystalGap-2*BotBGOWidth7-2*BotBGOWidth8-2*BotBGOWidth9-BotBGOWidth10} {-ShieldedHeight-.71}

#Adding Bottom SiPM Modules
Shape BRIK SipmHousingBlock1
SipmHousingBlock1.Parameters {0.5*0.42} {BotBGOWidth1} {BGObottomThick}
Shape BRIK SipmHousingHole1
SipmHousingHole1.Parameters 0.16 {BotBGOWidth1-.16} {BGObottomThick-.16}
Orientation SipmHousingHole1Ori
SipmHousingHole1Ori.Position 0.0 {-.16} 0.0

Shape SUBTRACTION SipmHousingMinusHole1
SipmHousingMinusHole1.Parameters SipmHousingBlock1 SipmHousingHole1 SipmHousingHole1Ori

Volume BotSipmModule1
BotSipmModule1.Material al7075
BotSipmModule1.Visibility 1
BotSipmModule1.Color 1
BotSipmModule1.Shape SipmHousingMinusHole1

BotSipmModule1.Copy BotSipmModule1negX
BotSipmModule1negX.Mother ShieldedTelescope
BotSipmModule1negX.Position {-CryoBaseX+BotBGOtoHouseGapX+0.5*.42} {CryoBaseY-BotBGOWidth1-CrystalWrapping-BotBGOtoHouseGapY} {-ShieldedHeight-.71}

BotSipmModule1.Copy BotSipmModule1posX
BotSipmModule1posX.Mother ShieldedTelescope
BotSipmModule1posX.Position {CryoBaseX-BotBGOtoHouseGapX-0.5*.42} {CryoBaseY-BotBGOWidth1-CrystalWrapping-BotBGOtoHouseGapY} {-ShieldedHeight-.71}

Shape BRIK SipmHousingBlock2
SipmHousingBlock2.Parameters {0.5*0.42} {BotBGOWidth2} {BGObottomThick}
Shape BRIK SipmHousingHole2
SipmHousingHole2.Parameters 0.16 {BotBGOWidth2-.16} {BGObottomThick-.16}
Orientation SipmHousingHole2Ori
SipmHousingHole2Ori.Position 0.0 {-.16} 0.0

Shape SUBTRACTION SipmHousingMinusHole2
SipmHousingMinusHole2.Parameters SipmHousingBlock2 SipmHousingHole2 SipmHousingHole2Ori

Volume BotSipmModule2
BotSipmModule2.Material al7075
BotSipmModule2.Visibility 1
BotSipmModule2.Color 1
BotSipmModule2.Shape SipmHousingMinusHole2

BotSipmModule2.Copy BotSipmModule2negX
BotSipmModule2negX.Mother ShieldedTelescope
BotSipmModule2negX.Position {-CryoBaseX+BotBGOtoHouseGapX+0.5*.42} {CryoBaseY-2*CrystalWrapping-2*BotBGOWidth1-BotBGOtoHouseGapY-BGOcrystalGap-BotBGOWidth2} {-ShieldedHeight-.71}

BotSipmModule2.Copy BotSipmModule2posX
BotSipmModule2posX.Mother ShieldedTelescope
BotSipmModule2posX.Position {CryoBaseX-BotBGOtoHouseGapX-0.5*.42} {CryoBaseY-2*CrystalWrapping-2*BotBGOWidth1-BotBGOtoHouseGapY-BGOcrystalGap-BotBGOWidth2} {-ShieldedHeight-.71}

Shape BRIK SipmHousingBlock3
SipmHousingBlock3.Parameters {0.5*0.42} {BotBGOWidth3} {BGObottomThick}
Shape BRIK SipmHousingHole3
SipmHousingHole3.Parameters 0.16 {BotBGOWidth3-.16} {BGObottomThick-.16}
Orientation SipmHousingHole3Ori
SipmHousingHole3Ori.Position 0.0 {-.16} 0.0

Shape SUBTRACTION SipmHousingMinusHole3
SipmHousingMinusHole3.Parameters SipmHousingBlock3 SipmHousingHole3 SipmHousingHole3Ori

Volume BotSipmModule3
BotSipmModule3.Material al7075
BotSipmModule3.Visibility 1
BotSipmModule3.Color 1
BotSipmModule3.Shape SipmHousingMinusHole3

BotSipmModule3.Copy BotSipmModule3negX
BotSipmModule3negX.Mother ShieldedTelescope
BotSipmModule3negX.Position {-CryoBaseX+BotBGOtoHouseGapX+0.5*.42} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-5*CrystalWrapping-2*BGOcrystalGap-2*BotBGOWidth2-BotBGOWidth3} {-ShieldedHeight-.71}

BotSipmModule3.Copy BotSipmModule3posX
BotSipmModule3posX.Mother ShieldedTelescope
BotSipmModule3posX.Position {CryoBaseX-BotBGOtoHouseGapX-0.5*.42} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-5*CrystalWrapping-2*BGOcrystalGap-2*BotBGOWidth2-BotBGOWidth3} {-ShieldedHeight-.71}

Shape BRIK SipmHousingBlock4
SipmHousingBlock4.Parameters {0.5*0.42} {BotBGOWidth4} {BGObottomThick}
Shape BRIK SipmHousingHole4
SipmHousingHole4.Parameters 0.16 {BotBGOWidth4-.16} {BGObottomThick-.16}
Orientation SipmHousingHole4Ori
SipmHousingHole4Ori.Position 0.0 {-.16} 0.0

Shape SUBTRACTION SipmHousingMinusHole4
SipmHousingMinusHole4.Parameters SipmHousingBlock4 SipmHousingHole4 SipmHousingHole4Ori

Volume BotSipmModule4
BotSipmModule4.Material al7075
BotSipmModule4.Visibility 1
BotSipmModule4.Color 1
BotSipmModule4.Shape SipmHousingMinusHole4

BotSipmModule4.Copy BotSipmModule4negX
BotSipmModule4negX.Mother ShieldedTelescope
BotSipmModule4negX.Position {-CryoBaseX+BotBGOtoHouseGapX+0.5*.42} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-7*CrystalWrapping-3*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-BotBGOWidth4} {-ShieldedHeight-.71}

BotSipmModule4.Copy BotSipmModule4posX
BotSipmModule4posX.Mother ShieldedTelescope
BotSipmModule4posX.Position {CryoBaseX-BotBGOtoHouseGapX-0.5*.42} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-7*CrystalWrapping-3*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-BotBGOWidth4} {-ShieldedHeight-.71}


Shape BRIK SipmHousingBlock5
SipmHousingBlock5.Parameters {0.5*0.42} {BotBGOWidth5} {BGObottomThick}
Shape BRIK SipmHousingHole5
SipmHousingHole5.Parameters 0.16 {BotBGOWidth5-.16} {BGObottomThick-.16}
Orientation SipmHousingHole5Ori
SipmHousingHole5Ori.Position 0.0 {-.16} 0.0

Shape SUBTRACTION SipmHousingMinusHole5
SipmHousingMinusHole5.Parameters SipmHousingBlock4 SipmHousingHole4 SipmHousingHole4Ori

Volume BotSipmModule5
BotSipmModule5.Material al7075
BotSipmModule5.Visibility 1
BotSipmModule5.Color 1
BotSipmModule5.Shape SipmHousingMinusHole5

BotSipmModule5.Copy BotSipmModule5negX
BotSipmModule5negX.Mother ShieldedTelescope
BotSipmModule5negX.Position {-CryoBaseX+BotBGOtoHouseGapX+0.5*.42} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-9*CrystalWrapping-4*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-2*BotBGOWidth4-BotBGOWidth5} {-ShieldedHeight-.71}

BotSipmModule5.Copy BotSipmModule5posX
BotSipmModule5posX.Mother ShieldedTelescope
BotSipmModule5posX.Position {CryoBaseX-BotBGOtoHouseGapX-0.5*.42} {CryoBaseY-BotBGOtoHouseGapY-2*BotBGOWidth1-9*CrystalWrapping-4*BGOcrystalGap-2*BotBGOWidth2-2*BotBGOWidth3-2*BotBGOWidth4-BotBGOWidth5} {-ShieldedHeight-.71}


###################################
# Cryostat Base plate
#  being placed in this volume because it sits on top of the bottom shield
#Shape BRIK CryoBigBase
#CryoBigBase.Parameters CryoBaseX CryoBaseY CryoBaseZ
#Shape BRIK CryoBaseStage
#CryoBaseStage.Parameters CryoBaseStageX CryoBaseStageY CryoBaseStageZ
#Orientation CryoBaseStageOri
#CryoBaseStageOri.Position 0.0 0.0 {(CryoBaseZ-CryoBaseStageZ)+2*CryoBaseStageZ}

#Shape UNION CryoBigBasePlusStage
#CryoBigBasePlusStage.Parameters CryoBigBase CryoBaseStage CryoBaseStageOri

#Shape TUBE CryoBaseFrangHole
#CryoBaseFrangeHole.Parametes 0.0 0.363 {2*CryoBaseStageZ+2*CryoBaseZ+.1} 0.0 360.0
#CryoBaseFrangeHole.Parametes 0.0 0.363 {2.386} 0.0 360.0
#Orientation CryoBaseFrangHoleOri
#CryoBaseFrangHoleOri.Position 0.0 0.0 0.0

#Shape Subtraction CryoBaseMinusFrangHole
#CryoBaseMinusFrangHole.Parameters CryoBigBasePlusStage CryoBaseFrangHole CryoBaseFrangHoleOri

#Making this an organic shape to account for the coldstrap hole
Shape BRIK CryoBase
CryoBase.Parameters CryoBaseX CryoBaseY CryoBaseZ
Shape Brik CryoBaseHole 
CryoBaseHole.Parameters {0.5*3.18} {0.5*6.35} {CryoBaseZ+.1}
Orientation CryoBaseHoleOri
CryoBaseHoleOri.Position {CryoBaseX-21.05-0.5*3.18} {CryoBaseY-0.5*6.35-12.88} {0.0}

Shape SUBTRACTION CryoBaseMinusHole
CryoBaseMinusHole.Parameters CryoBase CryoBaseHole CryoBaseHoleOri

#material is Al6061
Volume Cryostat_Base
Cryostat_Base.Material al6061
Cryostat_Base.Visibility 1
Cryostat_Base.Color 9
Cryostat_Base.Shape CryoBaseMinusHole
#Cryostat_Base.Position 0.0 0.0 {-ShieldedHeight+2*+CryoBaseZ}
#Cryostat_Base.Position 0.0 0.0 {-ShieldedHeight+2*BGOBotZ+CryoBaseZ}
#Cryostat_Base.Position 0.0 0.0 {-ShieldedHeight-.71+BGOBotZ+CryoBaseZ}
Cryostat_Base.Position 0.0 0.0 {-ShieldedHeight-.71+BGOBotZ+CryoBaseZ-.014}
Cryostat_Base.Mother ShieldedTelescope

#########################################################################################################################
# Shield Side Walls

#Going to start with the X shields. These are the shields that are positioned at -X and +X positions and are the longer shields
Shape BRIK SideWall1
SideWall1.Parameters {BGOsideThick+BGOWallFullThickness+CrystalWrapping} {0.5*BGOouterY} {CrystalWrapping+BGOsideHigh+ 2*BGOBotCloseoutPlate}
Shape BRIK BGOCrystalHole1
BGOCrystalHole1.Parameters {BGOsideThick+CrystalWrapping} {BGOYLength+CrystalWrapping} {BGOsideHigh + 2*BGOTopCloseoutPlate + CrystalWrapping+.1}
Orientation BGOHole1Ori
#BGOHole1Ori.Position 0.0 {BGOouterY-BGOWallSideThickness-BGOYLength} {0.5*BGOWallFullThickness}
BGOHole1Ori.Position 0.0 {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {0.0}

Shape SUBTRACTION SidewallMinusHole1
SidewallMinusHole1.Parameters SideWall1 BGOCrystalHole1 BGOHole1Ori

Shape BRIK BGOCrystalHole2
BGOCrystalHole2.Parameters {BGOsideThick+CrystalWrapping} {BGOYLength+CrystalWrapping} {BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate+.1}
Orientation BGOHole2Ori
BGOHole2Ori.Position 0.0 {0.5*BGOouterY-2*BGOWallSideThicknessX-3*BGOYLength-2*CrystalWrapping-BGOcrystalGap} {0.0}

Shape SUBTRACTION SidewallMinusHole2
SidewallMinusHole2.Parameters SidewallMinusHole1 BGOCrystalHole2 BGOHole2Ori

Shape BRIK BGOCrystalHole3
BGOCrystalHole3.Parameters {BGOsideThick+CrystalWrapping} {BGOYLength+CrystalWrapping} {BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate+.1}
Orientation BGOHole3Ori
BGOHole3Ori.Position 0.0 {-0.5*BGOouterY+2*BGOWallSideThicknessX+BGOYLength} {0.0}

Shape SUBTRACTION SidewallMinusHole3
SidewallMinusHole3.Parameters SidewallMinusHole2 BGOCrystalHole3 BGOHole3Ori

#This is the smaller side of the shields
#7075 aluminum
Volume BGOsideX
BGOsideX.Material al6061
BGOsideX.Visibility 1
BGOsideX.Color 7
BGOsideX.Shape SidewallMinusHole3
#BGOsideX.Position {BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.0} {ShieldedHeight-BGOsideHigh-2*0.535-BGOWallFullThickness}
BGOsideX.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.0} {(-ShieldedHeight-0.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}
BGOsideX.Mother ShieldedTelescope

Volume BGOsideX_ACTIVE
BGOsideX_ACTIVE.Material bgo
BGOsideX_ACTIVE.Visibility 1
BGOsideX_ACTIVE.Color 6
BGOsideX_ACTIVE.Shape BRIK {BGOsideThick} {BGOYLength} {BGOsideHigh}

BGOsideX_ACTIVE.Copy BGOsideX_ACTIVE1 
BGOsideX_ACTIVE1.Mother ShieldedTelescope
#BGOsideX_ACTIVE1.Position {BGOinnerX+BGOWallFullThickness+BGOsideThick} {BGOouterY-BGOWallSideThicknessX-BGOYLength} {ShieldedHeight-BGOsideHigh-2*0.535-BGOWallFullThickness+0.5*BGOWallFullThickness}
#BGOsideX_ACTIVE1.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {ShieldedHeight-BGOsideHigh-2*0.535-BGOWallFullThickness+0.5*BGOWallFullThickness+BGOBotCloseoutPlate}
BGOsideX_ACTIVE1.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping+ 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideX_ACTIVE.Copy BGOsideX_ACTIVE2
BGOsideX_ACTIVE2.Mother ShieldedTelescope
BGOsideX_ACTIVE2.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-3*BGOYLength-2*CrystalWrapping-BGOcrystalGap} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideX_ACTIVE.Copy BGOsideX_ACTIVE3
BGOsideX_ACTIVE3.Mother ShieldedTelescope
BGOsideX_ACTIVE3.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {-0.5*BGOouterY+2*BGOWallSideThicknessX+BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

Volume BGOsideX_neg
BGOsideX_neg.Material al6061
BGOsideX_neg.Visibility 1
BGOsideX_neg.Color 3
BGOsideX_neg.Shape SidewallMinusHole3
#BGOsideX_neg.Position {-BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.0} {ShieldedHeight-BGOsideHigh-2*0.535-BGOWallFullThickness}
BGOsideX_neg.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.0} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideX_neg.Mother ShieldedTelescope

Volume BGOsideXneg_ACTIVE
BGOsideXneg_ACTIVE.Material bgo
BGOsideXneg_ACTIVE.Visibility 1
BGOsideXneg_ACTIVE.Color 6
BGOsideXneg_ACTIVE.Shape BRIK {BGOsideThick} {BGOYLength} {BGOsideHigh}

BGOsideXneg_ACTIVE.Copy BGOsideXneg_ACTIVE1
BGOsideXneg_ACTIVE1.Mother ShieldedTelescope
#BGOsideXneg_ACTIVE1.Position 0.0 {BGOouterY-BGOWallSideThickness-BGOYLength} {0.5*BGOWallFullThickness}
BGOsideXneg_ACTIVE1.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideXneg_ACTIVE.Copy BGOsideXneg_ACTIVE2
BGOsideXneg_ACTIVE2.Mother ShieldedTelescope
BGOsideXneg_ACTIVE2.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-3*BGOYLength-2*CrystalWrapping-BGOcrystalGap} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideXneg_ACTIVE.Copy BGOsideXneg_ACTIVE3
BGOsideXneg_ACTIVE3.Mother ShieldedTelescope
BGOsideXneg_ACTIVE3.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {-0.5*BGOouterY+2*BGOWallSideThicknessX+BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}


#BGO shield on the y side
Shape BRIK SideWall2
#SideWall2.Parameters {BGOinnerX} {BGOsideThick+BGOWallFullThickness} {0.5*BGOWallFullThickness+BGOsideHigh}
SideWall2.Parameters {0.5*BGOinnerX} {BGOsideThick+BGOWallFullThickness+CrystalWrapping} {CrystalWrapping+BGOsideHigh+ 2*BGOBotCloseoutPlate}
Shape BRIK BGOCrystalYHole1
BGOCrystalYHole1.Parameters {BGOXLength+CrystalWrapping} {BGOsideThick+CrystalWrapping} {BGOsideHigh+CrystalWrapping+2*BGOBotCloseoutPlate+.1}
Orientation BGOYHole1Ori
BGOYHole1Ori.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-BGOXLength-CrystalWrapping} {0.0} {0.0}

Shape SUBTRACTION SidewallYMinusHole1
SidewallYMinusHole1.Parameters SideWall2 BGOCrystalYHole1 BGOYHole1Ori

Shape BRIK BGOCrystalYHole2
BGOCrystalYHole2.Parameters {BGOXLength+CrystalWrapping} {BGOsideThick+CrystalWrapping} {BGOsideHigh+CrystalWrapping+2*BGOBotCloseoutPlate+.1}
Orientation BGOYHole2Ori
BGOYHole2Ori.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-3*BGOXLength-3*CrystalWrapping-BGOcrystalGap} {0.0} {0.0}

Shape SUBTRACTION SidewallYMinusHole2
SidewallYMinusHole2.Parameters SidewallYMinusHole1 BGOCrystalYHole2 BGOYHole2Ori

Shape BRIK BGOCrystalYHole3
BGOCrystalYHole3.Parameters {BGOXLength+CrystalWrapping} {BGOsideThick+CrystalWrapping} {BGOsideHigh+CrystalWrapping+2*BGOBotCloseoutPlate+.1}
Orientation BGOYHole3Ori
BGOYHole3Ori.Position {-0.5*BGOinnerX+2*BGOWallSideThicknessY+BGOXLength+CrystalWrapping} {0.0} {0.0}

Shape SUBTRACTION SidewallYMinusHole3
SidewallYMinusHole3.Parameters SidewallYMinusHole2 BGOCrystalYHole3 BGOYHole3Ori

Volume BGOsideY
BGOsideY.Material al6061
BGOsideY.Visibility 1
BGOsideY.Color 3
BGOsideY.Shape SidewallYMinusHole3
#BGOsideY.Position {0.0} {BGOinnerY+BGOWallFullThickness+BGOsideThick} {ShieldedHeight-BGOsideHigh-2*0.535-BGOWallFullThickness}
BGOsideY.Mother ShieldedTelescope
BGOsideY.Position {0.0} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}



Volume BGOsideY_ACTIVE
BGOsideY_ACTIVE.Material bgo
BGOsideY_ACTIVE.Visibility 1
BGOsideY_ACTIVE.Color 6
BGOsideY_ACTIVE.Shape BRIK {BGOXLength} {BGOsideThick} {BGOsideHigh}

BGOsideY_ACTIVE.Copy BGOsideY_ACTIVE1
BGOsideY_ACTIVE1.Mother ShieldedTelescope
BGOsideY_ACTIVE1.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-BGOXLength-CrystalWrapping} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}


BGOsideY_ACTIVE.Copy BGOsideY_ACTIVE2
BGOsideY_ACTIVE2.Mother ShieldedTelescope
BGOsideY_ACTIVE2.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-3*BGOXLength-3*CrystalWrapping-BGOcrystalGap} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideY_ACTIVE.Copy BGOsideY_ACTIVE3
BGOsideY_ACTIVE3.Mother ShieldedTelescope
BGOsideY_ACTIVE3.Position {-0.5*BGOinnerX+BGOWallSideThicknessY+BGOXLength+CrystalWrapping} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

# Now doing the shields on the negative Y side
Volume BGOsideYneg
BGOsideYneg.Material al6061
BGOsideYneg.Visibility 1
BGOsideYneg.Color 3
BGOsideYneg.Shape SidewallYMinusHole3
BGOsideYneg.Position {0.0} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}
BGOsideYneg.Mother ShieldedTelescope

Volume BGOsideYneg_ACTIVE
BGOsideYneg_ACTIVE.Material bgo
BGOsideYneg_ACTIVE.Visibility 1
BGOsideYneg_ACTIVE.Color 6
BGOsideYneg_ACTIVE.Shape BRIK {BGOXLength} {BGOsideThick} {BGOsideHigh}

BGOsideYneg_ACTIVE.Copy BGOsidenegY_ACTIVE1
BGOsidenegY_ACTIVE1.Mother ShieldedTelescope
BGOsidenegY_ACTIVE1.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-BGOXLength-CrystalWrapping} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideYneg_ACTIVE.Copy BGOsidenegY_ACTIVE2
BGOsidenegY_ACTIVE2.Mother ShieldedTelescope
BGOsidenegY_ACTIVE2.Position  {0.5*BGOinnerX-2*BGOWallSideThicknessY-3*BGOXLength-3*CrystalWrapping-BGOcrystalGap} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}

BGOsideYneg_ACTIVE.Copy BGOsidenegY_ACTIVE3
BGOsidenegY_ACTIVE3.Mother ShieldedTelescope
BGOsidenegY_ACTIVE3.Position {-0.5*BGOinnerX+2*BGOWallSideThicknessY+BGOXLength+CrystalWrapping} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ}




!*******************************************************
!         New SiPM Housings - not including the SiPMs yet 
!*******************************************************

Shape BRIK SipmHousingBlock
#SipmHousingBlock.Parameters 17.145 1.475 0.535
SipmHousingBlock.Parameters {BGOsideThick+CrystalWrapping}  BGOYLength  BGOTopCloseoutPlate
Shape BRIK SipmHousingHole
SipmHousingHole.Parameters 1.1125 1.92 0.16
Orientation SipmHousingHoleOri
#SipmHousingHoleOri.Position 0.0 0.0 -0.065
SipmHousingHoleOri.Position 0.0 0.0 {-BGOTopCloseoutPlate+.16}

Shape SUBTRACTION SipmHousingMinusHole
SipmHousingMinusHole.Parameters SipmHousingBlock SipmHousingHole SipmHousingHoleOri

Volume SipmModule
SipmModule.Material al7075
SipmModule.Visibility 1
SipmModule.Color 2
SipmModule.Shape SipmHousingMinusHole

SipmModule.Copy SipmModule1
SipmModule1.Mother ShieldedTelescope
SipmModule1.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModule.Copy SipmModule2
SipmModule2.Mother ShieldedTelescope
SipmModule2.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-3*BGOYLength-2*CrystalWrapping-BGOcrystalGap} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModule.Copy SipmModule3
SipmModule3.Mother ShieldedTelescope
SipmModule3.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {-0.5*BGOouterY+2*BGOWallSideThicknessX+BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

#Doing it for the shields on the -X side, then will do Y shields
SipmModule.Copy SipmModule4
SipmModule4.Mother ShieldedTelescope
SipmModule4.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModule.Copy SipmModule5
SipmModule5.Mother ShieldedTelescope
SipmModule5.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-3*BGOYLength-2*CrystalWrapping-BGOcrystalGap} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModule.Copy SipmModule6
SipmModule6.Mother ShieldedTelescope
SipmModule6.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {-0.5*BGOouterY+2*BGOWallSideThicknessX+BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

#Y-side Shields now

Shape BRIK SipmHousingBlockY
SipmHousingBlockY.Parameters {BGOsideThick+CrystalWrapping}  BGOXLength  BGOTopCloseoutPlate
Shape BRIK SipmHousingHoleY
SipmHousingHoleY.Parameters 1.1125 1.92 0.16
Orientation SipmHousingHoleYOri
SipmHousingHoleYOri.Position 0.0 0.0 {-BGOTopCloseoutPlate+.16}

Shape SUBTRACTION SipmHousingMinusHoleY
SipmHousingMinusHoleY.Parameters SipmHousingBlockY SipmHousingHoleY SipmHousingHoleYOri

Volume SipmModuleY
SipmModuleY.Material al7075
SipmModuleY.Visibility 1
SipmModuleY.Color 2
SipmModuleY.Shape SipmHousingMinusHoleY

SipmModuleY.Copy SipmModule7
SipmModule7.Mother ShieldedTelescope
SipmModule7.Rotation 0.0 0.0 90.0
SipmModule7.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-BGOXLength-CrystalWrapping} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModuleY.Copy SipmModule8
SipmModule8.Mother ShieldedTelescope
SipmModule8.Rotation 0.0 0.0 90.0
SipmModule8.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-3*BGOXLength-3*CrystalWrapping-BGOcrystalGap} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModuleY.Copy SipmModule9
SipmModule9.Mother ShieldedTelescope
SipmModule9.Rotation 0.0 0.0 90.0
SipmModule9.Position {-0.5*BGOinnerX+BGOWallSideThicknessY+BGOXLength+CrystalWrapping} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModuleY.Copy SipmModule10
SipmModule10.Mother ShieldedTelescope
SipmModule10.Rotation 0.0 0.0 90.0
SipmModule10.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-BGOXLength-CrystalWrapping} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModuleY.Copy SipmModule11
SipmModule11.Mother ShieldedTelescope
SipmModule11.Rotation 0.0 0.0 90.0
SipmModule11.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-3*BGOXLength-3*CrystalWrapping-BGOcrystalGap} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

SipmModuleY.Copy SipmModule12
SipmModule12.Mother ShieldedTelescope
SipmModule12.Rotation 0.0 0.0 90.0
SipmModule12.Position {-0.5*BGOinnerX+BGOWallSideThicknessY+BGOXLength+CrystalWrapping} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+CrystalWrapping+BGOTopCloseoutPlate}

# add in a strip of silicone and then a strip of an electionics board that equals the thickness of the closeoutplate

!*******************************************************
!         New Bottom Closeout Panels
!*******************************************************
Volume BotCloseout
BotCloseout.Material al7075
BotCloseout.Visibility 1
BotCloseout.Color 2
#BotCloseout.Shape BRIK {BGOsideThick+CrystalWrapping}  BGOYLength  {BGOBotCloseoutPlate -.103}
BotCloseout.Shape BRIK {BGOsideThick+CrystalWrapping}  BGOYLength  {BGOBotCloseoutPlate}

BotCloseout.Copy BotCloseout1
BotCloseout1.Mother ShieldedTelescope
BotCloseout1.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseout.Copy BotCloseout2
BotCloseout2.Mother ShieldedTelescope
BotCloseout2.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-3*BGOYLength-2*CrystalWrapping-BGOcrystalGap} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseout.Copy BotCloseout3
BotCloseout3.Mother ShieldedTelescope
BotCloseout3.Position {0.5*BGOinnerX+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {-0.5*BGOouterY+2*BGOWallSideThicknessX+BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

#Doing it for the shields on the -X side, then will do Y shields
BotCloseout.Copy BotCloseout4
BotCloseout4.Mother ShieldedTelescope
BotCloseout4.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseout.Copy BotCloseout5
BotCloseout5.Mother ShieldedTelescope
BotCloseout5.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {0.5*BGOouterY-2*BGOWallSideThicknessX-3*BGOYLength-2*CrystalWrapping-BGOcrystalGap} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseout.Copy BotCloseout6
BotCloseout6.Mother ShieldedTelescope
BotCloseout6.Position {-0.5*BGOinnerX-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {-0.5*BGOouterY+2*BGOWallSideThicknessX+BGOYLength} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

#Y shields bottom closeout panels
Volume BotCloseoutY
BotCloseoutY.Material al7075
BotCloseoutY.Visibility 1
BotCloseoutY.Color 2
BotCloseoutY.Shape BRIK {BGOsideThick+CrystalWrapping}  BGOXLength  {BGOBotCloseoutPlate}

BotCloseoutY.Copy BotCloseout7
BotCloseout7.Mother ShieldedTelescope
BotCloseout7.Rotation 0.0 0.0 90.0
BotCloseout7.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-BGOXLength-CrystalWrapping} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseoutY.Copy BotCloseout8
BotCloseout8.Mother ShieldedTelescope
BotCloseout8.Rotation 0.0 0.0 90.0
BotCloseout8.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-3*BGOXLength-3*CrystalWrapping-BGOcrystalGap} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseoutY.Copy BotCloseout9
BotCloseout9.Mother ShieldedTelescope
BotCloseout9.Rotation 0.0 0.0 90.0
BotCloseout9.Position {-0.5*BGOinnerX+BGOWallSideThicknessY+BGOXLength+CrystalWrapping} {BGOinnerY+BGOWallFullThickness+BGOsideThick+CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseoutY.Copy BotCloseout10
BotCloseout10.Mother ShieldedTelescope
BotCloseout10.Rotation 0.0 0.0 90.0
BotCloseout10.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-BGOXLength-CrystalWrapping} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseoutY.Copy BotCloseout11
BotCloseout11.Mother ShieldedTelescope
BotCloseout11.Rotation 0.0 0.0 90.0
BotCloseout11.Position {0.5*BGOinnerX-2*BGOWallSideThicknessY-3*BGOXLength-3*CrystalWrapping-BGOcrystalGap} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}

BotCloseoutY.Copy BotCloseout12
BotCloseout12.Mother ShieldedTelescope
BotCloseout12.Rotation 0.0 0.0 90.0
BotCloseout12.Position {-0.5*BGOinnerX+2*BGOWallSideThicknessY+BGOXLength+CrystalWrapping} {-BGOinnerY-BGOWallFullThickness-BGOsideThick-CrystalWrapping} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + 2*BGOBotCloseoutPlate)+CryoBaseZ-BGOsideHigh-CrystalWrapping-BGOBotCloseoutPlate}


!*******************************************************
!         New DRM Boxes - 
! COSI_ACS_Top_Assembly.step
! Housing material Al6061
! Circuit board is listed as Rogers3003l in the MEL but it is really 4003C
! Positioning of DRM Boxes was updated on 12/8 in the design. Needs to be reflected in the mass model
!*******************************************************

Shape BRIK DRMHousing
DRMHousing.Parameters {0.5*13} {0.5*13.3965} {.5*5.3721}
Shape BRIK DRMHousingHole
DRMHousingHole.Parameters {0.5*13-.84} {0.5*13.3965-.84} {.5*5.3721-.84}
Orientation DRMHousingHoleOri
DRMHousingHoleOri.Position 0.0 0.0 -0.065

Shape SUBTRACTION DRMHousingMinusHole
DRMHousingMinusHole.Parameters DRMHousing DRMHousingHole DRMHousingHoleOri


Volume DRMBox
DRMBox.Material al6061
DRMBox.Visibility 1
DRMBox.Color 8
DRMBox.Shape DRMHousingMinusHole

DRMBox.Copy DRM1
DRM1.Mother ShieldedTelescope
DRM1.Rotation 0.0 90.0 0.0
DRM1.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*5.3721)} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DRMBox.Copy DRM2
DRM2.Mother ShieldedTelescope
DRM2.Rotation 0.0 90.0 0.0
DRM2.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*5.3721)} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DRMBox.Copy DRM3
DRM3.Mother ShieldedTelescope
DRM3.Rotation 0.0 90.0 0.0
DRM3.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*5.3721)} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DRMBox.Copy DRM4
DRM4.Mother ShieldedTelescope
DRM4.Rotation 0.0 90.0 0.0
DRM4.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*5.3721)} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}


#DRMs on the Y shield Walls
DRMBox.Copy DRM5
DRM5.Mother ShieldedTelescope
DRM5.Rotation 0.0 90.0 90.0
DRM5.Position {0.5*BGOinnerX-3.08-0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*5.3721)} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}


DRMBox.Copy DRM6
DRM6.Mother ShieldedTelescope
DRM6.Rotation 0.0 90.0 90.0
DRM6.Position {-0.5*BGOinnerX+3.08+0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*5.3721)} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DRMBox.Copy DRM7
DRM7.Mother ShieldedTelescope
DRM7.Rotation 0.0 90.0 90.0
DRM7.Position {0.5*BGOinnerX-3.08-0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*5.3721)} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DRMBox.Copy DRM8
DRM8.Mother ShieldedTelescope
DRM8.Rotation 0.0 90.0 90.0
DRM8.Position {-0.5*BGOinnerX+3.08+0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*5.3721)} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}


#Electronics Boards inside the DRMs - called detector interface boards (DIBs)
Volume DIB
DIB.Material ro4003
DIB.Shape BRIK {0.5*11} {0.5*11.5} {.5*.177}
DIB.Visibility 1
DIB.Color 6

DIB.Copy DIB1
DIB1.Mother ShieldedTelescope
DIB1.Rotation 0.0 90.0 0.0
DIB1.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.25*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB2
DIB2.Mother ShieldedTelescope
DIB2.Rotation 0.0 90.0 0.0
DIB2.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB3
DIB3.Mother ShieldedTelescope
DIB3.Rotation 0.0 90.0 0.0
DIB3.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.6*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB4
DIB4.Mother ShieldedTelescope
DIB4.Rotation 0.0 90.0 0.0
DIB4.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.65*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB5
DIB5.Mother ShieldedTelescope
DIB5.Rotation 0.0 90.0 0.0
DIB5.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.25*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB6
DIB6.Mother ShieldedTelescope
DIB6.Rotation 0.0 90.0 0.0
DIB6.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB7
DIB7.Mother ShieldedTelescope
DIB7.Rotation 0.0 90.0 0.0
DIB7.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.6*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB8
DIB8.Mother ShieldedTelescope
DIB8.Rotation 0.0 90.0 0.0
DIB8.Position {-0.5*BGOinnerX-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.65*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB9
DIB9.Mother ShieldedTelescope
DIB9.Rotation 0.0 90.0 0.0
DIB9.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.25*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB10
DIB10.Mother ShieldedTelescope
DIB10.Rotation 0.0 90.0 0.0
DIB10.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB11
DIB11.Mother ShieldedTelescope
DIB11.Rotation 0.0 90.0 0.0
DIB11.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.6*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB12
DIB12.Mother ShieldedTelescope
DIB12.Rotation 0.0 90.0 0.0
DIB12.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.65*(5.3721+.84))} {0.5*BGOouterY-7.14-0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB13
DIB13.Mother ShieldedTelescope
DIB13.Rotation 0.0 90.0 0.0
DIB13.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.25*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB14
DIB14.Mother ShieldedTelescope
DIB14.Rotation 0.0 90.0 0.0
DIB14.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB15
DIB15.Mother ShieldedTelescope
DIB15.Rotation 0.0 90.0 0.0
DIB15.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.6*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB16
DIB16.Mother ShieldedTelescope
DIB16.Rotation 0.0 90.0 0.0
DIB16.Position {0.5*BGOinnerX+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.65*(5.3721+.84))} {-0.5*BGOouterY+7.14+0.5*13} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB17
DIB17.Mother ShieldedTelescope
DIB17.Rotation 0.0 90.0 90.0
DIB17.Position {0.5*BGOinnerX-3.08-0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.25*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB18
DIB18.Mother ShieldedTelescope
DIB18.Rotation 0.0 90.0 90.0
DIB18.Position {0.5*BGOinnerX-3.08-0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB19
DIB19.Mother ShieldedTelescope
DIB19.Rotation 0.0 90.0 90.0
DIB19.Position {0.5*BGOinnerX-3.08-0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.6*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB20
DIB20.Mother ShieldedTelescope
DIB20.Rotation 0.0 90.0 90.0
DIB20.Position {0.5*BGOinnerX-3.08-0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.65*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB21
DIB21.Mother ShieldedTelescope
DIB21.Rotation 0.0 90.0 90.0
DIB21.Position {0.5*BGOinnerX-3.08-0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.25*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB22
DIB22.Mother ShieldedTelescope
DIB22.Rotation 0.0 90.0 90.0
DIB22.Position {0.5*BGOinnerX-3.08-0.5*13} {-BGOinnerY+2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB23
DIB23.Mother ShieldedTelescope
DIB23.Rotation 0.0 90.0 90.0
DIB23.Position {0.5*BGOinnerX-3.08-0.5*13} {-BGOinnerY+2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.6*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB24
DIB24.Mother ShieldedTelescope
DIB24.Rotation 0.0 90.0 90.0
DIB24.Position {0.5*BGOinnerX-3.08-0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.65*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB25
DIB25.Mother ShieldedTelescope
DIB25.Rotation 0.0 90.0 90.0
DIB25.Position {-0.5*BGOinnerX+3.08+0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.25*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB26
DIB26.Mother ShieldedTelescope
DIB26.Rotation 0.0 90.0 90.0
DIB26.Position {-0.5*BGOinnerX+3.08+0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.5*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB27
DIB27.Mother ShieldedTelescope
DIB27.Rotation 0.0 90.0 90.0
DIB27.Position {-0.5*BGOinnerX+3.08+0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.6*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB28
DIB28.Mother ShieldedTelescope
DIB28.Rotation 0.0 90.0 90.0
DIB28.Position {-0.5*BGOinnerX+3.08+0.5*13} {-BGOinnerY-2*BGOWallFullThickness-2*BGOsideThick-2*CrystalWrapping-(0.65*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB29
DIB29.Mother ShieldedTelescope
DIB29.Rotation 0.0 90.0 90.0
DIB29.Position {-0.5*BGOinnerX+3.08+0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.25*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB30
DIB30.Mother ShieldedTelescope
DIB30.Rotation 0.0 90.0 90.0
DIB30.Position {-0.5*BGOinnerX+3.08+0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.5*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB31
DIB31.Mother ShieldedTelescope
DIB31.Rotation 0.0 90.0 90.0
DIB31.Position {-0.5*BGOinnerX+3.08+0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.6*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

DIB.Copy DIB32
DIB32.Mother ShieldedTelescope
DIB32.Rotation 0.0 90.0 90.0
DIB32.Position {-0.5*BGOinnerX+3.08+0.5*13} {BGOinnerY+2*BGOWallFullThickness+2*BGOsideThick+2*CrystalWrapping+(0.65*(5.3721+.84))} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+2*BGOTopCloseoutPlate-0.5*13.3965-1.2}

!********************************************
!       Adding the BotEMI Guards here
!********************************************
Shape BRIK CryoConnectPlate
CryoConnectPlate.Parameters 0.47 4.13 .04
Shape BRIK CryoHeightPlate
CryoHeightPlate.Parameters 0.04 4.13 0.67
Orientation CryoHeightPlateOri
CryoHeightPlateOri.Position {0.47+0.04} 0.0 {0.67+0.04}

Shape UNION CryoPlatePlusHeight
CryoPlatePlusHeight.Parameters CryoConnectPlate CryoHeightPlate CryoHeightPlateOri

Shape BRIK MainGuard
MainGuard.Parameters 2.71 4.43 .04
Orientation MainGuardOri
MainGuardOri.Position {2.71+.47+.08} 0.0 {2*0.67+0.08}

Shape UNION CryoPlatePlusMainGuard
CryoPlatePlusMainGuard.Parameters CryoPlatePlusHeight MainGuard MainGuardOri

Shape BRIK ACSHeightPlate
ACSHeightPlate.Parameters 0.04 4.13 0.69
Orientation ACSHeightPlateOri
ACSHeightPlateOri.Position {2*2.71+.47+.08+.04} {0.0} {0.69+0.04}

Shape UNION MainGuardPlusACSPlate
MainGuardPlusACSPlate.Parameters CryoPlatePlusMainGuard ACSHeightPlate ACSHeightPlateOri

Shape BRIK MainGuardRails
MainGuardRails.Parameters 2.54 0.04 0.625
Orientation MainGuardRailsOri
MainGuardRailsOri.Position {2.71+.47+.08} {4.43+.04} {2*0.67+0.08+0.625}

Shape UNION MainGuardPlusRail1
MainGuardPlusRail1.Parameters MainGuardPlusACSPlate MainGuardRails MainGuardRailsOri

Shape BRIK MainGuardRails2
MainGuardRails2.Parameters 2.54 0.04 0.625
Orientation MainGuardRails2Ori
MainGuardRails2Ori.Position {2.71+.47+.08} {-4.43-.04} {2*0.67+0.08+0.625}

Shape UNION MainGuardPlusRail2
MainGuardPlusRail2.Parameters MainGuardPlusRail1 MainGuardRails2 MainGuardRails2Ori


Volume BotEMI
BotEMI.Material al6061
BotEMI.Visibility 1
BotEMI.Color 7
BotEMI.Shape MainGuardPlusRail2

BotEMI.Copy BotEMI1
#BotEMI1.Position {CryostatOuterX-0.47-3*.04} {CryostatOuterY-5.156-3.699} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI1.Position {CryostatOuterX-0.47-3*.04} {CryostatOuterY-5.156-3.699} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI1.Mother ShieldedTelescope

BotEMI.Copy BotEMI2
#BotEMI2.Position {CryostatOuterX-0.47-3*.04} {-CryostatOuterY+5.156+3.699} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI2.Position {CryostatOuterX-0.47-3*.04} {-CryostatOuterY+5.156+3.699} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI2.Mother ShieldedTelescope

BotEMI.Copy BotEMI3
BotEMI3.Rotation 0.0 0.0 180.0
#BotEMI3.Position {-CryostatOuterX+0.47-3*.04} {CryostatOuterY-5.156-3.699} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI3.Position {-CryostatOuterX+0.47-3*.04} {CryostatOuterY-5.156-3.699} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI3.Mother ShieldedTelescope

BotEMI.Copy BotEMI4
BotEMI4.Rotation 0.0 0.0 180.0
#BotEMI4.Position {-CryostatOuterX+0.47-3*.04} {-CryostatOuterY+5.156+3.699} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI4.Position {-CryostatOuterX+0.47-3*.04} {-CryostatOuterY+5.156+3.699} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI4.Mother ShieldedTelescope

BotEMI.Copy BotEMI5
BotEMI5.Rotation 0.0 0.0 90.0
#BotEMI5.Position {CryostatOuterX-5.156-5.483} {CryostatOuterY-0.47-3*.04} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI5.Position {CryostatOuterX-5.156-5.483} {CryostatOuterY-0.47-3*.04} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI5.Mother ShieldedTelescope

BotEMI.Copy BotEMI6
BotEMI6.Rotation 0.0 0.0 90.0
#BotEMI6.Position {-CryostatOuterX+5.156+5.483} {CryostatOuterY-0.47-3*.04} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI6.Position {-CryostatOuterX+5.156+5.483} {CryostatOuterY-0.47-3*.04} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI6.Mother ShieldedTelescope

BotEMI.Copy BotEMI7
BotEMI7.Rotation 0.0 0.0 -90.0
#BotEMI7.Position {CryostatOuterX-5.156-5.483} {-CryostatOuterY+0.47+3*.04} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI7.Position {CryostatOuterX-5.156-5.483} {-CryostatOuterY+0.47+3*.04} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI7.Mother ShieldedTelescope

BotEMI.Copy BotEMI8
BotEMI8.Rotation 0.0 0.0 -90.0
#BotEMI8.Position {-CryostatOuterX+5.156+5.483} {-CryostatOuterY+0.47+3*.04} {(-ShieldedHeight-.71+BGOBotZ+CryoBaseZ)+(BGOsideHigh+CrystalWrapping + BGOBotCloseoutPlate)+CryoBaseZ+BGOsideHigh+BGOTopCloseoutPlate+.296}
BotEMI8.Position {-CryostatOuterX+5.156+5.483} {-CryostatOuterY+0.47+3*.04} {(-ShieldedHeight -.71 - BGOBotZ + 2*CryoBaseZ+ CryoBaseStageZ + CryostatOuterZ + CryoLidZ + 2*1.605)+(CryostatOuterZ+.1)+CryoLidZ+0.67+.1}
BotEMI8.Mother ShieldedTelescope



!********************************************
!       Representation of 6x330g cabling
!********************************************

#BeginComment
#   Volume Wiring
#   Wiring.Material electr
#   Wiring.Color 1
#   Wiring.Visibility 1 
#   Wiring.Shape BRIK 3.5 0.12 { 0.5 * NLayers * 2.54 }
#   Wiring.Copy Wiring_1
#   Wiring_1.Mother ShieldedTelescope
#   Wiring.Copy Wiring_2
#   Wiring_2.Mother ShieldedTelescope
#   Wiring.Copy Wiring_3
#   Wiring_3.Mother ShieldedTelescope
