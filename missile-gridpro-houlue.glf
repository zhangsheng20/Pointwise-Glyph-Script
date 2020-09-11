# Pointwise V18.0 Journal file - Mon Sep  7 17:35:04 2020

package require PWI_Glyph 2.18.0

pw::Application setUndoMaximumLevels 5
pw::Application reset
pw::Application markUndoLevel {Journal Reset}

pw::Application clearModified



set child_dirname "1000000000"
set child_dirname [string trim $child_dirname]
set path  {C:\Users\Administrator\Desktop\iSIGHT\output                }
set path  [string trim $path]
append path "\\"
append path $child_dirname
append path "\\"
append path $child_dirname
append path ".igs"
puts $path

set _TMP(mode_1) [pw::Application begin DatabaseImport]
 # $_TMP(mode_1) initialize -type Automatic {C:\Users\Administrator\Desktop\iSIGHT\1\1.igs}
  $_TMP(mode_1) initialize -type Automatic $path
  $_TMP(mode_1) setAttribute FileUnits Meters
  $_TMP(mode_1) setAttribute FileUnits Meters
  $_TMP(mode_1) read
  $_TMP(mode_1) convert
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel {Import Database}

set _DB(1) [pw::DatabaseEntity getByName "Missile-475-model"]
set _DB(2) [pw::DatabaseEntity getByName "Missile-139-model"]
set _DB(3) [pw::DatabaseEntity getByName "Missile-35-model"]
set _DB(4) [pw::DatabaseEntity getByName "Missile-379-model"]
set _DB(5) [pw::DatabaseEntity getByName "Missile-303-model"]
set _DB(6) [pw::DatabaseEntity getByName "Missile-419-model"]
set _DB(7) [pw::DatabaseEntity getByName "Missile-267-model"]
set _DB(8) [pw::DatabaseEntity getByName "Missile-119-model"]
set _DB(9) [pw::DatabaseEntity getByName "Missile-439-model"]
set _DB(10) [pw::DatabaseEntity getByName "Missile-363-model"]
set _DB(11) [pw::DatabaseEntity getByName "Missile-159-model"]
set _DB(12) [pw::DatabaseEntity getByName "Missile-515-model"]
set _DB(13) [pw::DatabaseEntity getByName "Missile-207-model"]
set _DB(14) [pw::DatabaseEntity getByName "Missile-283-model"]
set _DB(15) [pw::DatabaseEntity getByName "Missile-323-model"]
set _DB(16) [pw::DatabaseEntity getByName "Missile-535-model"]
set _DB(17) [pw::DatabaseEntity getByName "Missile-227-model"]
set _DB(18) [pw::DatabaseEntity getByName "Missile-19-model"]
set _DB(19) [pw::DatabaseEntity getByName "Missile-247-model"]
set _DB(20) [pw::DatabaseEntity getByName "Missile-399-model"]
set _DB(21) [pw::DatabaseEntity getByName "Missile-495-model"]
set _DB(22) [pw::DatabaseEntity getByName "Missile-55-model"]
set _DB(23) [pw::DatabaseEntity getByName "Missile-343-model"]
set _DB(24) [pw::DatabaseEntity getByName "Missile-103-model"]
set _DB(25) [pw::DatabaseEntity getByName "Missile-459-model"]
set ents [list $_DB(1) $_DB(2) $_DB(3) $_DB(4) $_DB(5) $_DB(6) $_DB(7) $_DB(8) $_DB(9) $_DB(10) $_DB(11) $_DB(12) $_DB(13) $_DB(14) $_DB(15) $_DB(16) $_DB(17) $_DB(18) $_DB(19) $_DB(20) $_DB(21) $_DB(22) $_DB(23) $_DB(24) $_DB(25)]
set _TMP(mode_3) [pw::Application begin Modify $ents]
  set _DB(26) [pw::DatabaseEntity getByName "Missile-475-quilt"]
  set _DB(27) [pw::DatabaseEntity getByName "Missile-139-quilt"]
  set _DB(28) [pw::DatabaseEntity getByName "Missile-35-quilt"]
  set _DB(29) [pw::DatabaseEntity getByName "Missile-379-quilt"]
  set _DB(30) [pw::DatabaseEntity getByName "Missile-303-quilt"]
  set _DB(31) [pw::DatabaseEntity getByName "Missile-419-quilt"]
  set _DB(32) [pw::DatabaseEntity getByName "Missile-267-quilt"]
  set _DB(33) [pw::DatabaseEntity getByName "Missile-119-quilt"]
  set _DB(34) [pw::DatabaseEntity getByName "Missile-439-quilt"]
  set _DB(35) [pw::DatabaseEntity getByName "Missile-363-quilt"]
  set _DB(36) [pw::DatabaseEntity getByName "Missile-159-quilt"]
  set _DB(37) [pw::DatabaseEntity getByName "Missile-515-quilt"]
  set _DB(38) [pw::DatabaseEntity getByName "Missile-207-quilt"]
  set _DB(39) [pw::DatabaseEntity getByName "Missile-283-quilt"]
  set _DB(40) [pw::DatabaseEntity getByName "Missile-323-quilt"]
  set _DB(41) [pw::DatabaseEntity getByName "Missile-535-quilt"]
  set _DB(42) [pw::DatabaseEntity getByName "Missile-227-quilt"]
  set _DB(43) [pw::DatabaseEntity getByName "Missile-19-quilt"]
  set _DB(44) [pw::DatabaseEntity getByName "Missile-247-quilt"]
  set _DB(45) [pw::DatabaseEntity getByName "Missile-399-quilt"]
  set _DB(46) [pw::DatabaseEntity getByName "Missile-495-quilt"]
  set _DB(47) [pw::DatabaseEntity getByName "Missile-55-quilt"]
  set _DB(48) [pw::DatabaseEntity getByName "Missile-343-quilt"]
  set _DB(49) [pw::DatabaseEntity getByName "Missile-103-quilt"]
  set _DB(50) [pw::DatabaseEntity getByName "Missile-459-quilt"]
  set _TMP(PW_1) [pw::Collection create]
  $_TMP(PW_1) set [list $_DB(1) $_DB(2) $_DB(3) $_DB(4) $_DB(5) $_DB(6) $_DB(7) $_DB(8) $_DB(9) $_DB(10) $_DB(11) $_DB(12) $_DB(13) $_DB(14) $_DB(15) $_DB(16) $_DB(17) $_DB(18) $_DB(19) $_DB(20) $_DB(21) $_DB(22) $_DB(23) $_DB(24) $_DB(25)]
  $_TMP(PW_1) do flipOrientation
  $_TMP(PW_1) delete
  unset _TMP(PW_1)
$_TMP(mode_3) end
unset _TMP(mode_3)
pw::Application markUndoLevel {Orient}

set _TMP(PW_2) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(23) $_DB(15) $_DB(7) $_DB(5) $_DB(14)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_2)
pw::Application markUndoLevel {Assemble Models}

set _TMP(PW_3) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(16) $_DB(21) $_DB(12) $_DB(1) $_DB(25)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_3)
pw::Application markUndoLevel {Assemble Models}

set _TMP(PW_4) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(2) $_DB(11)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_4)
pw::Application markUndoLevel {Assemble Models}

set _TMP(PW_5) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(20) $_DB(10) $_DB(4) $_DB(6) $_DB(9)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_5)
pw::Application markUndoLevel {Assemble Models}

set _TMP(PW_6) [pw::Model assemble -reject _TMP(rejectEnts) -rejectReason _TMP(rejectReasons) -rejectLocation _TMP(rejectLocations) [list $_DB(19) $_DB(17) $_DB(3) $_DB(22) $_DB(18)]]
unset _TMP(rejectEnts)
unset _TMP(rejectReasons)
unset _TMP(rejectLocations)
unset _TMP(PW_6)
pw::Application markUndoLevel {Assemble Models}

pw::Connector setCalculateDimensionMethod Spacing
pw::Connector setCalculateDimensionSpacing 0.050000000000000003
pw::DomainUnstructured setDefault Algorithm AdvancingFrontOrtho
set _TMP(PW_7) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(49) $_DB(24) $_DB(38) $_DB(13)]]
unset _TMP(unused)
unset _TMP(PW_7)
pw::Application markUndoLevel {Domains On DB Entities}

set _DB(51) [pw::DatabaseEntity getByName "Missile-459-model"]
set _TMP(PW_8) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(50) $_DB(26) $_DB(37) $_DB(51) $_DB(46)]]
unset _TMP(unused)
unset _TMP(PW_8)
pw::Application markUndoLevel {Domains On DB Entities}

set _DB(52) [pw::DatabaseEntity getByName "Missile-19-model"]
set _TMP(PW_9) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(44) $_DB(28) $_DB(52) $_DB(42) $_DB(43) $_DB(47)]]
unset _TMP(unused)
unset _TMP(PW_9)
pw::Application markUndoLevel {Domains On DB Entities}

set _DB(53) [pw::DatabaseEntity getByName "Missile-363-model"]
set _TMP(PW_10) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(35) $_DB(29) $_DB(31) $_DB(45) $_DB(34) $_DB(53)]]
unset _TMP(unused)
unset _TMP(PW_10)
pw::Application markUndoLevel {Domains On DB Entities}

set _DB(54) [pw::DatabaseEntity getByName "Missile-267-model"]
set _TMP(PW_11) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(54)]]
unset _TMP(unused)
unset _TMP(PW_11)
pw::Application markUndoLevel {Domains On DB Entities}

set _DB(55) [pw::DatabaseEntity getByName "Missile-139-model"]
pw::Connector setCalculateDimensionSpacing 0.01
set _TMP(PW_13) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(36) $_DB(27) $_DB(55)]]
unset _TMP(unused)
unset _TMP(PW_13)
pw::Application markUndoLevel {Domains On DB Entities}


set _DM(1) [pw::GridEntity getByName "dom-17"]
set _DM(2) [pw::GridEntity getByName "dom-1"]
set _DM(3) [pw::GridEntity getByName "dom-14"]
set _DM(4) [pw::GridEntity getByName "dom-10"]
set _DM(5) [pw::GridEntity getByName "dom-7"]
set _DM(6) [pw::GridEntity getByName "dom-20"]
set _DM(7) [pw::GridEntity getByName "dom-2"]
set _DM(8) [pw::GridEntity getByName "dom-8"]
set _DM(9) [pw::GridEntity getByName "dom-22"]
set _DM(10) [pw::GridEntity getByName "dom-12"]
set _DM(11) [pw::GridEntity getByName "dom-18"]
set _DM(12) [pw::GridEntity getByName "dom-5"]
set _DM(13) [pw::GridEntity getByName "dom-15"]
set _DM(14) [pw::GridEntity getByName "dom-11"]
set _DM(15) [pw::GridEntity getByName "dom-9"]
set _DM(16) [pw::GridEntity getByName "dom-13"]
set _DM(17) [pw::GridEntity getByName "dom-23"]
set _DM(18) [pw::GridEntity getByName "dom-4"]
set _DM(19) [pw::GridEntity getByName "dom-19"]
set _DM(20) [pw::GridEntity getByName "dom-6"]
set _DM(21) [pw::GridEntity getByName "dom-24"]
set _DM(22) [pw::GridEntity getByName "dom-3"]
set _DM(23) [pw::GridEntity getByName "dom-16"]
set _DM(24) [pw::GridEntity getByName "dom-21"]



set path "C:\\Users\\Administrator\\Desktop\\iSIGHT\\outputfile\\"
append path $child_dirname
append path "\\"
append path $child_dirname
append path ".dat"
puts $path


set _TMP(mode_3) [pw::Application begin GridExport [pw::Entity sort [list $_DM(1) $_DM(2) $_DM(3) $_DM(4) $_DM(5) $_DM(6) $_DM(7) $_DM(8) $_DM(9) $_DM(10) $_DM(11) $_DM(12) $_DM(13) $_DM(14) $_DM(15) $_DM(16) $_DM(17) $_DM(18) $_DM(19) $_DM(20) $_DM(21) $_DM(22) $_DM(23) $_DM(24)]]]
  #$_TMP(mode_3) initialize -type GridPro {C:/Users/Administrator/Desktop/pointwise/dom-1-25.dat}
  $_TMP(mode_3) initialize -type GridPro $path
  if {![$_TMP(mode_3) verify]} {
    error "Data verification failed."
  }
  $_TMP(mode_3) write
$_TMP(mode_3) end
unset _TMP(mode_3)

pw::Application exit