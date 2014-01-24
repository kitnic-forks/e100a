#!/bin/bash

# Target must be a target directory or .
TARGET=gerbers
PROJNAME=psu

# Valid: ITEAD, SEEED, OSHPARK
# Or set the values manually after the conditional

MANUF=ITEAD

if [ "$MANUF" = "OSHPARK" ]; then
    EXT_TOPCOPR="GTL"
    EXT_TOPMASK="GTS"
    EXT_TOPSILK="GTO"

    EXT_BOTCOPR="GBL"
    EXT_BOTMASK="GBS"
    EXT_BOTSILK="GBO"

    EXT_MECH="GKO"
    EXT_DRILL="XLN"

elif [ "$MANUF" = "ITEAD" ] || [ "$MANUF" = "SEEED" ]; then
    EXT_TOPCOPR="GTL"
    EXT_TOPMASK="GTS"
    EXT_TOPSILK="GTO"

    EXT_BOTCOPR="GBL"
    EXT_BOTMASK="GBS"
    EXT_BOTSILK="GBO"

    EXT_MECH="GML"
    EXT_DRILL="TXT"

fi

mkdir -p "${TARGET}"

mv -f "${PROJNAME}-F_Cu.gtl" "${TARGET}/${PROJNAME}.${EXT_TOPCOPR}"
mv -f "${PROJNAME}-F_Mask.gts" "${TARGET}/${PROJNAME}.${EXT_TOPMASK}"
mv -f "${PROJNAME}-F_SilkS.gto" "${TARGET}/${PROJNAME}.${EXT_TOPSILK}"

mv -f "${PROJNAME}-B_Cu.gbl" "${TARGET}/${PROJNAME}.${EXT_BOTCOPR}"
mv -f "${PROJNAME}-B_Mask.gbs" "${TARGET}/${PROJNAME}.${EXT_BOTMASK}"
mv -f "${PROJNAME}-B_SilkS.gbo" "${TARGET}/${PROJNAME}.${EXT_BOTSILK}"

mv -f "${PROJNAME}.drl" "${TARGET}/${PROJNAME}.${EXT_DRILL}"

if [ -f "${PROJNAME}-Edge_Cuts.gbr" ]; then
    mv -f "${PROJNAME}-Edge_Cuts.gbr" "${TARGET}/${PROJNAME}.${EXT_MECH}"
elif [ -f "${PROJNAME}-Eco1_User.gbr" ] ; then
    mv -f "${PROJNAME}-Eco1_User.gbr" "${TARGET}/${PROJNAME}.${EXT_MECH}"
fi
