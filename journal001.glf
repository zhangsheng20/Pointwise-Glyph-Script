# Pointwise V18.0 Journal file - Tue Jul 14 17:49:00 2020

package require PWI_Glyph 2.18.0

pw::Application setUndoMaximumLevels 5
pw::Application reset
pw::Application markUndoLevel {Journal Reset}

pw::Application clearModified

set _TMP(mode_1) [pw::Application begin DatabaseImport]
  $_TMP(mode_1) initialize -type Automatic {C:/Users/Administrator/Desktop/pointwise/cube.CATPart}
  $_TMP(mode_1) setAttribute FileUnits Meters
  $_TMP(mode_1) read
  $_TMP(mode_1) convert
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel {Import Database}

pw::Application setGridPreference Unstructured
pw::Application clearClipboard
set _DB(1) [pw::DatabaseEntity getByName "quilt-5"]
set _DB(2) [pw::DatabaseEntity getByName "quilt-3"]
set _DB(3) [pw::DatabaseEntity getByName "quilt-1"]
set _DB(4) [pw::DatabaseEntity getByName "Part1"]
set _DB(5) [pw::DatabaseEntity getByName "quilt-4"]
pw::Application setClipboard [list $_DB(1) $_DB(2) $_DB(3) $_DB(4) $_DB(5)]
pw::Application markUndoLevel {Copy}

pw::Application clearClipboard
set _DB(6) [pw::DatabaseEntity getByName "quilt-2"]
set _DB(7) [pw::DatabaseEntity getByName "quilt-6"]
pw::Application setClipboard [list $_DB(1) $_DB(2) $_DB(6) $_DB(3) $_DB(4) $_DB(7) $_DB(5)]
pw::Application markUndoLevel {Copy}

pw::Application setGridPreference Structured
pw::Application setGridPreference Unstructured
pw::Connector setCalculateDimensionMethod Spacing
pw::Connector setCalculateDimensionSpacing 0.10000000000000001
set _TMP(PW_1) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(4)]]
unset _TMP(unused)
unset _TMP(PW_1)
pw::Application markUndoLevel {Domains On DB Entities}

pw::Display setShowDomains 0
pw::Application clearClipboard
set _CN(1) [pw::GridEntity getByName "con-7"]
set _CN(2) [pw::GridEntity getByName "con-2"]
set _CN(3) [pw::GridEntity getByName "con-1"]
set _CN(4) [pw::GridEntity getByName "con-8"]
set _CN(5) [pw::GridEntity getByName "con-10"]
set _CN(6) [pw::GridEntity getByName "con-6"]
set _CN(7) [pw::GridEntity getByName "con-4"]
set _CN(8) [pw::GridEntity getByName "con-5"]
set _CN(9) [pw::GridEntity getByName "con-9"]
set _CN(10) [pw::GridEntity getByName "con-12"]
set _CN(11) [pw::GridEntity getByName "con-3"]
set _CN(12) [pw::GridEntity getByName "con-11"]
pw::Application setClipboard [list $_DB(1) $_CN(1) $_DB(5) $_CN(2) $_CN(3) $_CN(4) $_DB(3) $_CN(5) $_CN(6) $_CN(7) $_DB(2) $_CN(8) $_DB(4) $_CN(9) $_CN(10) $_DB(6) $_DB(7) $_CN(11) $_CN(12)]
pw::Application markUndoLevel {Copy}

set _TMP(PW_2) [pw::Collection create]
$_TMP(PW_2) set [list $_DB(4)]
$_TMP(PW_2) do setRenderAttribute FillMode Shaded
$_TMP(PW_2) delete
unset _TMP(PW_2)
pw::Application markUndoLevel {Modify Entity Display}

set _TMP(PW_3) [pw::Collection create]
$_TMP(PW_3) set [list $_DB(1) $_CN(1) $_DB(5) $_CN(2) $_CN(3) $_CN(4) $_DB(3) $_CN(5) $_CN(6) $_CN(7) $_DB(2) $_CN(8) $_DB(4) $_CN(9) $_CN(10) $_DB(6) $_DB(7) $_CN(11) $_CN(12)]
$_TMP(PW_3) do setRenderAttribute FillMode Shaded
$_TMP(PW_3) delete
unset _TMP(PW_3)
pw::Application markUndoLevel {Modify Entity Display}

pw::Display setShowDomains 1
pw::Display setShowDatabase 0
pw::Application clearClipboard
pw::Application clearClipboard
set _DM(1) [pw::GridEntity getByName "dom-1"]
set _DM(2) [pw::GridEntity getByName "dom-3"]
set _DM(3) [pw::GridEntity getByName "dom-5"]
set _DM(4) [pw::GridEntity getByName "dom-2"]
set _DM(5) [pw::GridEntity getByName "dom-6"]
set _DM(6) [pw::GridEntity getByName "dom-4"]
pw::Application setClipboard [list $_DM(1) $_CN(1) $_DM(2) $_DM(3) $_CN(2) $_CN(3) $_DM(4) $_CN(4) $_CN(5) $_DM(5) $_CN(6) $_CN(7) $_CN(8) $_DM(6) $_CN(9) $_CN(10) $_CN(11) $_CN(12)]
pw::Application markUndoLevel {Copy}

set _TMP(PW_4) [pw::Collection create]
$_TMP(PW_4) set [list $_DM(1) $_CN(1) $_DM(2) $_DM(3) $_CN(2) $_CN(3) $_DM(4) $_CN(4) $_CN(5) $_DM(5) $_CN(6) $_CN(7) $_CN(8) $_DM(6) $_CN(9) $_CN(10) $_CN(11) $_CN(12)]
$_TMP(PW_4) do setRenderAttribute FillMode Shaded
$_TMP(PW_4) delete
unset _TMP(PW_4)
pw::Application markUndoLevel {Modify Entity Display}

pw::Application save {C:/Users/Administrator/Desktop/pointwise/journal001_out.pw}
