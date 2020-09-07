# Pointwise V18.0 Journal file - Sun Sep  6 21:02:45 2020

package require PWI_Glyph 2.18.0

pw::Application setUndoMaximumLevels 5
pw::Application reset
pw::Application markUndoLevel {Journal Reset}

pw::Application clearModified

set _TMP(mode_1) [pw::Application begin DatabaseImport]
  $_TMP(mode_1) initialize -type Automatic {C:/Users/Administrator/Desktop/pointwise/Missile-t1-11-t2-50-t3-87-H-6000-R-200-r-420-S-0.4.igs}
  $_TMP(mode_1) setAttribute FileUnits Meters
  $_TMP(mode_1) read
  $_TMP(mode_1) convert
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel {Import Database}

pw::Connector setCalculateDimensionMethod Spacing
pw::Connector setCalculateDimensionSpacing 0.050000000000000003
pw::Application clearClipboard
set _DB(1) [pw::DatabaseEntity getByName "Missile-49-quilt"]
set _DB(2) [pw::DatabaseEntity getByName "Missile-33-quilt"]
set _DB(3) [pw::DatabaseEntity getByName "Missile-15-model"]
set _DB(4) [pw::DatabaseEntity getByName "Missile-281-quilt"]
set _DB(5) [pw::DatabaseEntity getByName "Missile-33-model"]
set _DB(6) [pw::DatabaseEntity getByName "Missile-281-model"]
set _DB(7) [pw::DatabaseEntity getByName "Missile-15-quilt"]
set _DB(8) [pw::DatabaseEntity getByName "Missile-67-model"]
set _DB(9) [pw::DatabaseEntity getByName "Missile-67-quilt"]
set _DB(10) [pw::DatabaseEntity getByName "Missile-49-model"]
pw::Application setClipboard [list $_DB(1) $_DB(2) $_DB(3) $_DB(4) $_DB(5) $_DB(6) $_DB(7) $_DB(8) $_DB(9) $_DB(10)]
pw::Application markUndoLevel {Copy}

set _TMP(PW_1) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(3) $_DB(5) $_DB(6) $_DB(8) $_DB(10)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_1)
pw::Application markUndoLevel {Assemble Models}

pw::Application clearClipboard
set _DB(11) [pw::DatabaseEntity getByName "Missile-439-quilt"]
set _DB(12) [pw::DatabaseEntity getByName "Missile-461-model"]
set _DB(13) [pw::DatabaseEntity getByName "Missile-387-model"]
set _DB(14) [pw::DatabaseEntity getByName "Missile-421-quilt"]
set _DB(15) [pw::DatabaseEntity getByName "Missile-405-quilt"]
set _DB(16) [pw::DatabaseEntity getByName "Missile-439-model"]
set _DB(17) [pw::DatabaseEntity getByName "Missile-421-model"]
set _DB(18) [pw::DatabaseEntity getByName "Missile-387-quilt"]
set _DB(19) [pw::DatabaseEntity getByName "Missile-405-model"]
set _DB(20) [pw::DatabaseEntity getByName "Missile-461-quilt"]
pw::Application setClipboard [list $_DB(11) $_DB(12) $_DB(13) $_DB(14) $_DB(15) $_DB(16) $_DB(17) $_DB(18) $_DB(19) $_DB(20)]
pw::Application markUndoLevel {Copy}

set _TMP(PW_2) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(12) $_DB(13) $_DB(16) $_DB(17) $_DB(19)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_2)
pw::Application markUndoLevel {Assemble Models}

pw::Application clearClipboard
set _DB(21) [pw::DatabaseEntity getByName "Missile-107-model"]
set _DB(22) [pw::DatabaseEntity getByName "Missile-87-quilt"]
set _DB(23) [pw::DatabaseEntity getByName "Missile-107-quilt"]
set _DB(24) [pw::DatabaseEntity getByName "Missile-87-model"]
pw::Application setClipboard [list $_DB(21) $_DB(22) $_DB(23) $_DB(24)]
pw::Application markUndoLevel {Copy}

set _TMP(PW_3) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(21) $_DB(24)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_3)
pw::Application markUndoLevel {Assemble Models}

pw::Application clearClipboard
set _DB(25) [pw::DatabaseEntity getByName "Missile-495-model"]
set _DB(26) [pw::DatabaseEntity getByName "Missile-529-model"]
set _DB(27) [pw::DatabaseEntity getByName "Missile-551-model"]
set _DB(28) [pw::DatabaseEntity getByName "Missile-511-quilt"]
set _DB(29) [pw::DatabaseEntity getByName "Missile-477-model"]
set _DB(30) [pw::DatabaseEntity getByName "Missile-495-quilt"]
set _DB(31) [pw::DatabaseEntity getByName "Missile-551-quilt"]
set _DB(32) [pw::DatabaseEntity getByName "Missile-477-quilt"]
set _DB(33) [pw::DatabaseEntity getByName "Missile-529-quilt"]
set _DB(34) [pw::DatabaseEntity getByName "Missile-511-model"]
pw::Application setClipboard [list $_DB(25) $_DB(26) $_DB(27) $_DB(28) $_DB(29) $_DB(30) $_DB(31) $_DB(32) $_DB(33) $_DB(34)]
pw::Application markUndoLevel {Copy}

set _TMP(PW_4) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(25) $_DB(26) $_DB(27) $_DB(29) $_DB(34)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_4)
pw::Application markUndoLevel {Assemble Models}

pw::Application clearClipboard
set _DB(35) [pw::DatabaseEntity getByName "Missile-349-model"]
set _DB(36) [pw::DatabaseEntity getByName "Missile-331-quilt"]
set _DB(37) [pw::DatabaseEntity getByName "Missile-371-model"]
set _DB(38) [pw::DatabaseEntity getByName "Missile-297-quilt"]
set _DB(39) [pw::DatabaseEntity getByName "Missile-349-quilt"]
set _DB(40) [pw::DatabaseEntity getByName "Missile-315-model"]
set _DB(41) [pw::DatabaseEntity getByName "Missile-315-quilt"]
set _DB(42) [pw::DatabaseEntity getByName "Missile-331-model"]
set _DB(43) [pw::DatabaseEntity getByName "Missile-371-quilt"]
set _DB(44) [pw::DatabaseEntity getByName "Missile-297-model"]
pw::Application setClipboard [list $_DB(35) $_DB(36) $_DB(37) $_DB(38) $_DB(39) $_DB(40) $_DB(41) $_DB(42) $_DB(43) $_DB(44)]
pw::Application markUndoLevel {Copy}

set _TMP(PW_5) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(35) $_DB(37) $_DB(40) $_DB(42) $_DB(44)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_5)
pw::Application markUndoLevel {Assemble Models}

set _DB(45) [pw::DatabaseEntity getByName "Missile-167-model"]
set _DB(46) [pw::DatabaseEntity getByName "Missile-259-model"]
set _TMP(PW_6) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(45) $_DB(46)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_6)
pw::Application markUndoLevel {Assemble Models}

pw::Application setGridPreference Unstructured
pw::Application clearClipboard
set _DB(47) [pw::DatabaseEntity getByName "Missile-297-model"]
set _DB(48) [pw::DatabaseEntity getByName "Missile-15-model"]
set _DB(49) [pw::DatabaseEntity getByName "Missile-167-model"]
set _DB(50) [pw::DatabaseEntity getByName "Missile-87-model"]
set _DB(51) [pw::DatabaseEntity getByName "Missile-387-model"]
set _DB(52) [pw::DatabaseEntity getByName "Missile-477-model"]
set _DB(53) [pw::DatabaseEntity getByName "Missile-199-model"]
pw::Application setClipboard [list $_DB(47) $_DB(48) $_DB(49) $_DB(50) $_DB(51) $_DB(52) $_DB(53)]
pw::Application markUndoLevel {Copy}

set ents [list $_DB(47) $_DB(48) $_DB(49) $_DB(50) $_DB(51) $_DB(52) $_DB(53)]
set _TMP(mode_2) [pw::Application begin Modify $ents]
  set _DB(54) [pw::DatabaseEntity getByName "Missile-167-quilt"]
  set _DB(55) [pw::DatabaseEntity getByName "Missile-259-quilt"]
  set _DB(56) [pw::DatabaseEntity getByName "Missile-199-quilt"]
  set _TMP(PW_7) [pw::Collection create]
  $_TMP(PW_7) set [list $_DB(47) $_DB(48) $_DB(49) $_DB(50) $_DB(51) $_DB(52) $_DB(53)]
  $_TMP(PW_7) do flipOrientation
  $_TMP(PW_7) delete
  unset _TMP(PW_7)
$_TMP(mode_2) end
unset _TMP(mode_2)
pw::Application markUndoLevel {Orient}

set _TMP(PW_8) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(53)]]
unset _TMP(unused)
unset _TMP(PW_8)
pw::Application markUndoLevel {Domains On DB Entities}

set _TMP(PW_9) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(48)]]
unset _TMP(unused)
unset _TMP(PW_9)
pw::Application markUndoLevel {Domains On DB Entities}

set _TMP(PW_10) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(51)]]
unset _TMP(unused)
unset _TMP(PW_10)
pw::Application markUndoLevel {Domains On DB Entities}

pw::Connector setCalculateDimensionSpacing 0.03
set _TMP(PW_11) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(50)]]
unset _TMP(unused)
unset _TMP(PW_11)
pw::Application markUndoLevel {Domains On DB Entities}

pw::Connector setCalculateDimensionSpacing 0.05000000000000
set _TMP(PW_12) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(52)]]
unset _TMP(unused)
unset _TMP(PW_12)
pw::Application markUndoLevel {Domains On DB Entities}

set _TMP(PW_13) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(47)]]
unset _TMP(unused)
unset _TMP(PW_13)
pw::Application markUndoLevel {Domains On DB Entities}

set _TMP(PW_14) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(49)]]
unset _TMP(unused)
unset _TMP(PW_14)
pw::Application markUndoLevel {Domains On DB Entities}



# Appended by Pointwise V18.0 - Mon Sep  7 11:05:32 2020

set _DM(1) [pw::GridEntity getByName "dom-8"]
set _DM(2) [pw::GridEntity getByName "dom-9"]
set _DM(3) [pw::GridEntity getByName "dom-19"]
set _DM(4) [pw::GridEntity getByName "dom-17"]
set _DM(5) [pw::GridEntity getByName "dom-2"]
set _DM(6) [pw::GridEntity getByName "dom-14"]
set _DM(7) [pw::GridEntity getByName "dom-18"]
set _DM(8) [pw::GridEntity getByName "dom-4"]
set _DM(9) [pw::GridEntity getByName "dom-11"]
set _DM(10) [pw::GridEntity getByName "dom-24"]
set _DM(11) [pw::GridEntity getByName "dom-7"]
set _DM(12) [pw::GridEntity getByName "dom-20"]
set _DM(13) [pw::GridEntity getByName "dom-16"]
set _DM(14) [pw::GridEntity getByName "dom-5"]
set _DM(15) [pw::GridEntity getByName "dom-25"]
set _DM(16) [pw::GridEntity getByName "dom-1"]
set _DM(17) [pw::GridEntity getByName "dom-3"]
set _DM(18) [pw::GridEntity getByName "dom-23"]
set _DM(19) [pw::GridEntity getByName "dom-12"]
set _DM(20) [pw::GridEntity getByName "dom-10"]
set _DM(21) [pw::GridEntity getByName "dom-21"]
set _DM(22) [pw::GridEntity getByName "dom-22"]
set _DM(23) [pw::GridEntity getByName "dom-13"]
set _DM(24) [pw::GridEntity getByName "dom-6"]
set _DM(25) [pw::GridEntity getByName "dom-15"]
set _TMP(mode_1) [pw::Application begin GridExport [pw::Entity sort [list $_DM(1) $_DM(2) $_DM(3) $_DM(4) $_DM(5) $_DM(6) $_DM(7) $_DM(8) $_DM(9) $_DM(10) $_DM(11) $_DM(12) $_DM(13) $_DM(14) $_DM(15) $_DM(16) $_DM(17) $_DM(18) $_DM(19) $_DM(20) $_DM(21) $_DM(22) $_DM(23) $_DM(24) $_DM(25)]]]
  $_TMP(mode_1) initialize -type GridPro {C:/Users/Administrator/Desktop/pointwise/dom-1-25.dat}
  if {![$_TMP(mode_1) verify]} {
    error "Data verification failed."
  }
  $_TMP(mode_1) write
$_TMP(mode_1) end
unset _TMP(mode_1)
