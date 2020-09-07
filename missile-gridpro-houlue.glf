# Pointwise V18.0 Journal file - Mon Sep  7 17:35:04 2020

package require PWI_Glyph 2.18.0

pw::Application setUndoMaximumLevels 5
pw::Application reset
pw::Application markUndoLevel {Journal Reset}

pw::Application clearModified

set _TMP(mode_1) [pw::Application begin DatabaseImport]
  $_TMP(mode_1) initialize -type Automatic {C:/Users/Administrator/Desktop/pointwise/Missile-t1-11-t2-50-t3-73-H-6000-R-200-r-420-S-0.4.igs}
  $_TMP(mode_1) setAttribute FileUnits Meters
  $_TMP(mode_1) read
  $_TMP(mode_1) convert
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel {Import Database}

set _DB(1) [pw::DatabaseEntity getByName "Missile-95-model"]
set _DB(2) [pw::DatabaseEntity getByName "Missile-595-model"]
set _DB(3) [pw::DatabaseEntity getByName "Missile-15-model"]
set _DB(4) [pw::DatabaseEntity getByName "Missile-573-model"]
set _DB(5) [pw::DatabaseEntity getByName "Missile-273-model"]
set _DB(6) [pw::DatabaseEntity getByName "Missile-373-model"]
set _DB(7) [pw::DatabaseEntity getByName "Missile-411-model"]
set _DB(8) [pw::DatabaseEntity getByName "Missile-531-model"]
set _DB(9) [pw::DatabaseEntity getByName "Missile-473-model"]
set _DB(10) [pw::DatabaseEntity getByName "Missile-311-model"]
set _DB(11) [pw::DatabaseEntity getByName "Missile-35-model"]
set _DB(12) [pw::DatabaseEntity getByName "Missile-495-model"]
set _DB(13) [pw::DatabaseEntity getByName "Missile-295-model"]
set _DB(14) [pw::DatabaseEntity getByName "Missile-157-model"]
set _DB(15) [pw::DatabaseEntity getByName "Missile-431-model"]
set _DB(16) [pw::DatabaseEntity getByName "Missile-511-model"]
set _DB(17) [pw::DatabaseEntity getByName "Missile-253-model"]
set _DB(18) [pw::DatabaseEntity getByName "Missile-451-model"]
set _DB(19) [pw::DatabaseEntity getByName "Missile-551-model"]
set _DB(20) [pw::DatabaseEntity getByName "Missile-331-model"]
set _DB(21) [pw::DatabaseEntity getByName "Missile-55-model"]
set _DB(22) [pw::DatabaseEntity getByName "Missile-395-model"]
set _DB(23) [pw::DatabaseEntity getByName "Missile-75-model"]
set _DB(24) [pw::DatabaseEntity getByName "Missile-189-model"]
set _DB(25) [pw::DatabaseEntity getByName "Missile-351-model"]
set ents [list $_DB(1) $_DB(2) $_DB(3) $_DB(4) $_DB(5) $_DB(6) $_DB(7) $_DB(8) $_DB(9) $_DB(10) $_DB(11) $_DB(12) $_DB(13) $_DB(14) $_DB(15) $_DB(16) $_DB(17) $_DB(18) $_DB(19) $_DB(20) $_DB(21) $_DB(22) $_DB(23) $_DB(24) $_DB(25)]
set _TMP(mode_2) [pw::Application begin Modify $ents]
  set _DB(26) [pw::DatabaseEntity getByName "Missile-95-quilt"]
  set _DB(27) [pw::DatabaseEntity getByName "Missile-595-quilt"]
  set _DB(28) [pw::DatabaseEntity getByName "Missile-15-quilt"]
  set _DB(29) [pw::DatabaseEntity getByName "Missile-573-quilt"]
  set _DB(30) [pw::DatabaseEntity getByName "Missile-273-quilt"]
  set _DB(31) [pw::DatabaseEntity getByName "Missile-373-quilt"]
  set _DB(32) [pw::DatabaseEntity getByName "Missile-411-quilt"]
  set _DB(33) [pw::DatabaseEntity getByName "Missile-531-quilt"]
  set _DB(34) [pw::DatabaseEntity getByName "Missile-473-quilt"]
  set _DB(35) [pw::DatabaseEntity getByName "Missile-311-quilt"]
  set _DB(36) [pw::DatabaseEntity getByName "Missile-35-quilt"]
  set _DB(37) [pw::DatabaseEntity getByName "Missile-495-quilt"]
  set _DB(38) [pw::DatabaseEntity getByName "Missile-295-quilt"]
  set _DB(39) [pw::DatabaseEntity getByName "Missile-157-quilt"]
  set _DB(40) [pw::DatabaseEntity getByName "Missile-431-quilt"]
  set _DB(41) [pw::DatabaseEntity getByName "Missile-511-quilt"]
  set _DB(42) [pw::DatabaseEntity getByName "Missile-253-quilt"]
  set _DB(43) [pw::DatabaseEntity getByName "Missile-451-quilt"]
  set _DB(44) [pw::DatabaseEntity getByName "Missile-551-quilt"]
  set _DB(45) [pw::DatabaseEntity getByName "Missile-331-quilt"]
  set _DB(46) [pw::DatabaseEntity getByName "Missile-55-quilt"]
  set _DB(47) [pw::DatabaseEntity getByName "Missile-395-quilt"]
  set _DB(48) [pw::DatabaseEntity getByName "Missile-75-quilt"]
  set _DB(49) [pw::DatabaseEntity getByName "Missile-189-quilt"]
  set _DB(50) [pw::DatabaseEntity getByName "Missile-351-quilt"]
  set _TMP(PW_1) [pw::Collection create]
  $_TMP(PW_1) set [list $_DB(1) $_DB(2) $_DB(3) $_DB(4) $_DB(5) $_DB(6) $_DB(7) $_DB(8) $_DB(9) $_DB(10) $_DB(11) $_DB(12) $_DB(13) $_DB(14) $_DB(15) $_DB(16) $_DB(17) $_DB(18) $_DB(19) $_DB(20) $_DB(21) $_DB(22) $_DB(23) $_DB(24) $_DB(25)]
  $_TMP(PW_1) do flipOrientation
  $_TMP(PW_1) delete
  unset _TMP(PW_1)
$_TMP(mode_2) end
unset _TMP(mode_2)
pw::Application markUndoLevel {Orient}

pw::Connector setCalculateDimensionMethod Spacing
pw::Connector setCalculateDimensionSpacing 0.050000000000000003
pw::DomainUnstructured setDefault Algorithm AdvancingFrontOrtho
pw::Application setGridPreference Unstructured
set _TMP(PW_2) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(14)]]
unset _TMP(unused)
unset _TMP(PW_2)
pw::Application markUndoLevel {Domains On DB Entities}

set _CN(1) [pw::GridEntity getByName "con-10"]
pw::Entity delete [list $_CN(1)]
pw::Application markUndoLevel {Delete}

set _CN(1) [pw::GridEntity getByName "con-1"]
pw::Entity delete [list $_CN(1)]
pw::Application markUndoLevel {Delete}

set _CN(1) [pw::GridEntity getByName "con-2"]
pw::Entity delete [list $_CN(1)]
pw::Application markUndoLevel {Delete}

set _CN(1) [pw::GridEntity getByName "con-6"]
pw::Entity delete [list $_CN(1)]
pw::Application markUndoLevel {Delete}

set _CN(1) [pw::GridEntity getByName "con-8"]
set _CN(2) [pw::GridEntity getByName "con-3"]
set _CN(3) [pw::GridEntity getByName "con-4"]
set _CN(4) [pw::GridEntity getByName "con-5"]
set _CN(5) [pw::GridEntity getByName "con-13"]
set _CN(6) [pw::GridEntity getByName "con-15"]
set _CN(7) [pw::GridEntity getByName "con-9"]
set _CN(8) [pw::GridEntity getByName "con-14"]
set _CN(9) [pw::GridEntity getByName "con-7"]
set _CN(10) [pw::GridEntity getByName "con-12"]
set _CN(11) [pw::GridEntity getByName "con-16"]
set _CN(12) [pw::GridEntity getByName "con-11"]
set _CN(13) [pw::GridEntity getByName "con-17"]
set _TMP(PW_3) [pw::DomainUnstructured createFromConnectors -reject _TMP(unusedCons)  [list $_CN(1) $_CN(2) $_CN(3) $_CN(4) $_CN(5) $_CN(6) $_CN(7) $_CN(8) $_CN(9) $_CN(10) $_CN(11) $_CN(12) $_CN(13)]]
unset _TMP(unusedCons)
unset _TMP(PW_3)
pw::Application markUndoLevel {Assemble Domains}

set _TMP(PW_4) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(42)]]
unset _TMP(unused)
unset _TMP(PW_4)
pw::Application markUndoLevel {Domains On DB Entities}

set _CN(14) [pw::GridEntity getByName "con-18"]
pw::Entity delete [list $_CN(14)]
pw::Application markUndoLevel {Delete}

set _CN(15) [pw::GridEntity getByName "con-28"]
pw::Entity delete [list $_CN(15)]
pw::Application markUndoLevel {Delete}

set _CN(16) [pw::GridEntity getByName "con-22"]
pw::Entity delete [list $_CN(16)]
pw::Application markUndoLevel {Delete}

set _CN(17) [pw::GridEntity getByName "con-27"]
pw::Entity delete [list $_CN(17)]
pw::Application markUndoLevel {Delete}

pw::Display resetView -X
set _CN(18) [pw::GridEntity getByName "con-20"]
set _CN(19) [pw::GridEntity getByName "con-35"]
set _CN(20) [pw::GridEntity getByName "con-29"]
set _CN(21) [pw::GridEntity getByName "con-33"]
set _CN(22) [pw::GridEntity getByName "con-25"]
set _CN(23) [pw::GridEntity getByName "con-23"]
set _CN(24) [pw::GridEntity getByName "con-26"]
set _CN(25) [pw::GridEntity getByName "con-34"]
set _CN(26) [pw::GridEntity getByName "con-24"]
set _CN(27) [pw::GridEntity getByName "con-30"]
set _CN(28) [pw::GridEntity getByName "con-32"]
set _CN(29) [pw::GridEntity getByName "con-31"]
set _TMP(PW_5) [pw::DomainUnstructured createFromConnectors -reject _TMP(unusedCons)  [list $_CN(18) $_CN(19) $_CN(20) $_CN(21) $_CN(22) $_CN(7) $_CN(23) $_CN(9) $_CN(24) $_CN(25) $_CN(26) $_CN(27) $_CN(28) $_CN(29)]]
unset _TMP(unusedCons)
unset _TMP(PW_5)
pw::Application markUndoLevel {Assemble Domains}

set _TMP(PW_6) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(18) $_DB(15) $_DB(12) $_DB(9) $_DB(7)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_6)
pw::Application markUndoLevel {Assemble Models}

set _DB(51) [pw::DatabaseEntity getByName "Missile-411-model"]
set _TMP(PW_7) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(51)]]
unset _TMP(unused)
unset _TMP(PW_7)
pw::Application markUndoLevel {Domains On DB Entities}

pw::Display resetView -X
set _TMP(PW_8) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(25) $_DB(22) $_DB(20) $_DB(10) $_DB(6)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_8)
pw::Application markUndoLevel {Assemble Models}

set _DB(52) [pw::DatabaseEntity getByName "Missile-311-model"]
set _TMP(PW_9) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(52)]]
unset _TMP(unused)
unset _TMP(PW_9)
pw::Application markUndoLevel {Domains On DB Entities}

set _TMP(PW_10) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(19) $_DB(16) $_DB(4) $_DB(8) $_DB(2)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_10)
pw::Application markUndoLevel {Assemble Models}

set _DB(53) [pw::DatabaseEntity getByName "Missile-511-model"]
set _TMP(PW_11) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(53)]]
unset _TMP(unused)
unset _TMP(PW_11)
pw::Application markUndoLevel {Domains On DB Entities}

set _TMP(PW_12) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(21) $_DB(5) $_DB(3) $_DB(13) $_DB(11)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_12)
pw::Application markUndoLevel {Assemble Models}

set _DB(54) [pw::DatabaseEntity getByName "Missile-15-model"]
set _TMP(PW_13) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(54)]]
unset _TMP(unused)
unset _TMP(PW_13)
pw::Application markUndoLevel {Domains On DB Entities}

set _TMP(PW_14) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(23) $_DB(1)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_14)
pw::Application markUndoLevel {Assemble Models}

set _DB(55) [pw::DatabaseEntity getByName "Missile-75-model"]
set _TMP(PW_15) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(55)]]
unset _TMP(unused)
unset _TMP(PW_15)
pw::Application markUndoLevel {Domains On DB Entities}

pw::Application save {C:/Users/Administrator/Desktop/pointwise/66666.pw}
set _DM(1) [pw::GridEntity getByName "dom-17"]
set _DM(2) [pw::GridEntity getByName "dom-14"]
set _DM(3) [pw::GridEntity getByName "dom-13"]
set _DM(4) [pw::GridEntity getByName "dom-24"]
set _DM(5) [pw::GridEntity getByName "dom-7"]
set _DM(6) [pw::GridEntity getByName "dom-2"]
set _DM(7) [pw::GridEntity getByName "dom-9"]
set _DM(8) [pw::GridEntity getByName "dom-18"]
set _DM(9) [pw::GridEntity getByName "dom-5"]
set _DM(10) [pw::GridEntity getByName "dom-8"]
set _DM(11) [pw::GridEntity getByName "dom-15"]
set _DM(12) [pw::GridEntity getByName "dom-6"]
set _DM(13) [pw::GridEntity getByName "dom-12"]
set _DM(14) [pw::GridEntity getByName "dom-3"]
set _DM(15) [pw::GridEntity getByName "dom-19"]
set _DM(16) [pw::GridEntity getByName "dom-4"]
set _DM(17) [pw::GridEntity getByName "dom-21"]
set _DM(18) [pw::GridEntity getByName "dom-23"]
set _DM(19) [pw::GridEntity getByName "dom-16"]
set _DM(20) [pw::GridEntity getByName "dom-22"]
set _DM(21) [pw::GridEntity getByName "dom-1"]
set _DM(22) [pw::GridEntity getByName "dom-11"]
set _DM(23) [pw::GridEntity getByName "dom-10"]
set _DM(24) [pw::GridEntity getByName "dom-20"]
set _TMP(mode_3) [pw::Application begin GridExport [pw::Entity sort [list $_DM(1) $_DM(2) $_DM(3) $_DM(4) $_DM(5) $_DM(6) $_DM(7) $_DM(8) $_DM(9) $_DM(10) $_DM(11) $_DM(12) $_DM(13) $_DM(14) $_DM(15) $_DM(16) $_DM(17) $_DM(18) $_DM(19) $_DM(20) $_DM(21) $_DM(22) $_DM(23) $_DM(24)]]]
  $_TMP(mode_3) initialize -type GridPro {C:/Users/Administrator/Desktop/pointwise/dom-1-25.dat}
  if {![$_TMP(mode_3) verify]} {
    error "Data verification failed."
  }
  $_TMP(mode_3) write
$_TMP(mode_3) end
unset _TMP(mode_3)
