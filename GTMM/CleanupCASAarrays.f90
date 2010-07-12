!------------------------------------------------------------------------------
!          Harvard University Atmospheric Chemistry Modeling Group            !
!------------------------------------------------------------------------------
!BOP
!
! !IROUTINE: CleanupCASAarrays
!
! !DESCRIPTION: Subroutine CleanupCASAarrays deallocate all allocated arrays
!  used for GTMM
!
! !INTERFACE:
!
SUBROUTINE CleanupCASAarrays
!
! !USES
!
  USE defineConstants
  USE loadCASAinput
  USE defineArrays
  
  implicit none
!
! !REVISION HISTORY:
!
!EOP
!------------------------------------------------------------------------------
!BOC
! 
  IF (ALLOCATED(clay                  )) DEALLOCATE(clay)
  IF (ALLOCATED(silt                  )) DEALLOCATE(silt)
  IF (ALLOCATED(sand                  )) DEALLOCATE(sand)
  IF (ALLOCATED(litcn                 )) DEALLOCATE(litcn)
  IF (ALLOCATED(lignin                )) DEALLOCATE(lignin)
  IF (ALLOCATED(lrage                 )) DEALLOCATE(lrage)
  IF (ALLOCATED(woodage               )) DEALLOCATE(woodage)
  IF (ALLOCATED(SMparams              )) DEALLOCATE(SMparams)
  IF (ALLOCATED(last_soilm            )) DEALLOCATE(last_soilm)
  IF (ALLOCATED(PET                   )) DEALLOCATE(PET)
  IF (ALLOCATED(AHI                   )) DEALLOCATE(AHI)
  IF (ALLOCATED(last_pack             )) DEALLOCATE(last_pack)
  IF (ALLOCATED(spack                 )) DEALLOCATE (spack)
  IF (ALLOCATED(bgmoist               )) DEALLOCATE(bgmoist)
  IF (ALLOCATED(NPPmoist              )) DEALLOCATE(NPPmoist)
  IF (ALLOCATED(EET                   )) DEALLOCATE(EET)
  IF (ALLOCATED(NPPmoist_temp         )) DEALLOCATE(NPPmoist_temp)
  IF (ALLOCATED(bgmoist_temp          )) DEALLOCATE(bgmoist_temp)
  IF (ALLOCATED(bgmoistpret           )) DEALLOCATE(bgmoistpret)
  IF (ALLOCATED(NPPmoistpret          )) DEALLOCATE(NPPmoistpret)
  IF (ALLOCATED(soilm                 )) DEALLOCATE(soilm)
  IF (ALLOCATED(rdr                   )) DEALLOCATE(rdr)
  IF (ALLOCATED(current_ppt           )) DEALLOCATE(current_ppt)
  IF (ALLOCATED(eeta                  )) DEALLOCATE(eeta)
  IF (ALLOCATED(eetb                  )) DEALLOCATE(eetb)
  IF (ALLOCATED(this_soilm            )) DEALLOCATE(this_soilm)
  IF (ALLOCATED(bgratio               )) DEALLOCATE(bgratio)
  IF (ALLOCATED(srmax                 )) DEALLOCATE(srmax)
  IF (ALLOCATED(LAImax                )) DEALLOCATE(LAImax)
  IF (ALLOCATED(LAI_temp              )) DEALLOCATE(LAI_temp)
  IF (ALLOCATED(FPAR                  )) DEALLOCATE(FPAR)
  IF (ALLOCATED(LAI                   )) DEALLOCATE(LAI)
  IF (ALLOCATED(sr                    )) DEALLOCATE(sr)
  IF (ALLOCATED(topt                  )) DEALLOCATE(topt)
  IF (ALLOCATED(maxlai                )) DEALLOCATE(maxlai)
  IF (ALLOCATED(lais                  )) DEALLOCATE(lais)
  
  IF (ALLOCATED(LTCON                 )) DEALLOCATE(LTCON)
  IF (ALLOCATED(LTVAR                 )) DEALLOCATE(LTVAR)
  IF (ALLOCATED(abovewoodpool         )) DEALLOCATE(abovewoodpool)
  IF (ALLOCATED(belowwoodpool         )) DEALLOCATE(belowwoodpool)
  IF (ALLOCATED(leafpool              )) DEALLOCATE(leafpool)
  IF (ALLOCATED(frootpool             )) DEALLOCATE(frootpool)
  IF (ALLOCATED(cwdpool               )) DEALLOCATE(cwdpool)
  IF (ALLOCATED(surfstrpool           )) DEALLOCATE(surfstrpool)
  IF (ALLOCATED(surfmetpool           )) DEALLOCATE(surfmetpool)
  IF (ALLOCATED(surfmicpool           )) DEALLOCATE(surfmicpool)
  IF (ALLOCATED(soilstrpool           )) DEALLOCATE(soilstrpool)
  IF (ALLOCATED(soilmetpool           )) DEALLOCATE(soilmetpool)
  IF (ALLOCATED(soilmicpool           )) DEALLOCATE(soilmicpool)
  IF (ALLOCATED(slowpool              )) DEALLOCATE(slowpool)
  IF (ALLOCATED(armoredpool           )) DEALLOCATE(armoredpool)
  IF (ALLOCATED(hleafpool             )) DEALLOCATE(hleafpool)
  IF (ALLOCATED(hfrootpool            )) DEALLOCATE(hfrootpool)
  IF (ALLOCATED(hsurfstrpool          )) DEALLOCATE(hsurfstrpool)
  IF (ALLOCATED(hsurfmetpool          )) DEALLOCATE(hsurfmetpool)
  IF (ALLOCATED(hsurfmicpool          )) DEALLOCATE(hsurfmicpool)
  IF (ALLOCATED(hsoilstrpool          )) DEALLOCATE(hsoilstrpool)
  IF (ALLOCATED(hsoilmetpool          )) DEALLOCATE(hsoilmetpool)
  IF (ALLOCATED(hsoilmicpool          )) DEALLOCATE(hsoilmicpool)
  IF (ALLOCATED(hslowpool             )) DEALLOCATE(hslowpool)
  IF (ALLOCATED(harmoredpool          )) DEALLOCATE(harmoredpool)
  IF (ALLOCATED(max_hg_leaf           )) DEALLOCATE(max_hg_leaf)
  IF (ALLOCATED(max_hg_surfstr        )) DEALLOCATE(max_hg_surfstr)
  IF (ALLOCATED(max_hg_surfmet        )) DEALLOCATE(max_hg_surfmet)
  IF (ALLOCATED(max_hg_surfmic        )) DEALLOCATE(max_hg_surfmic)
  IF (ALLOCATED(max_hg_soilstr        )) DEALLOCATE(max_hg_soilstr)
  IF (ALLOCATED(max_hg_soilmet        )) DEALLOCATE(max_hg_soilmet)
  IF (ALLOCATED(max_hg_soilmic        )) DEALLOCATE(max_hg_soilmic)
  IF (ALLOCATED(max_hg_slow           )) DEALLOCATE(max_hg_slow)
  IF (ALLOCATED(max_hg_armored        )) DEALLOCATE(max_hg_armored)
  IF (ALLOCATED(max_hg_hleaf          )) DEALLOCATE(max_hg_hleaf)
  IF (ALLOCATED(max_hg_hsurfstr       )) DEALLOCATE(max_hg_hsurfstr)
  IF (ALLOCATED(max_hg_hsurfmet       )) DEALLOCATE(max_hg_hsurfmet)
  IF (ALLOCATED(max_hg_hsurfmic       )) DEALLOCATE(max_hg_hsurfmic)
  IF (ALLOCATED(max_hg_hsoilstr       )) DEALLOCATE(max_hg_hsoilstr)
  IF (ALLOCATED(max_hg_hsoilmet       )) DEALLOCATE(max_hg_hsoilmet)
  IF (ALLOCATED(max_hg_hsoilmic       )) DEALLOCATE(max_hg_hsoilmic)
  IF (ALLOCATED(max_hg_hslow          )) DEALLOCATE(max_hg_hslow)
  IF (ALLOCATED(max_hg_harmored       )) DEALLOCATE(max_hg_harmored)
                                      
  IF (ALLOCATED(abovewoodpools        )) DEALLOCATE(abovewoodpools)
  IF (ALLOCATED(belowwoodpools        )) DEALLOCATE(belowwoodpools)
  IF (ALLOCATED(leafpools             )) DEALLOCATE(leafpools)
  IF (ALLOCATED(frootpools            )) DEALLOCATE(frootpools)
  IF (ALLOCATED(cwdpools              )) DEALLOCATE(cwdpools)
  IF (ALLOCATED(surfstrpools          )) DEALLOCATE(surfstrpools)
  IF (ALLOCATED(surfmetpools          )) DEALLOCATE(surfmetpools)
  IF (ALLOCATED(surfmicpools          )) DEALLOCATE(surfmicpools)
  IF (ALLOCATED(soilstrpools          )) DEALLOCATE(soilstrpools)
  IF (ALLOCATED(soilmetpools          )) DEALLOCATE(soilmetpools)
  IF (ALLOCATED(soilmicpools          )) DEALLOCATE(soilmicpools)
  IF (ALLOCATED(slowpools             )) DEALLOCATE(slowpools)
  IF (ALLOCATED(armoredpools          )) DEALLOCATE(armoredpools)
                                      
  IF (ALLOCATED(hleafpools            )) DEALLOCATE(hleafpools)
  IF (ALLOCATED(hfrootpools           )) DEALLOCATE(hfrootpools)
  IF (ALLOCATED(hsurfstrpools         )) DEALLOCATE(hsurfstrpools)
  IF (ALLOCATED(hsurfmetpools         )) DEALLOCATE(hsurfmetpools)
  IF (ALLOCATED(hsurfmicpools         )) DEALLOCATE(hsurfmicpools)
  IF (ALLOCATED(hsoilstrpools         )) DEALLOCATE(hsoilstrpools)
  IF (ALLOCATED(hsoilmetpools         )) DEALLOCATE(hsoilmetpools)
  IF (ALLOCATED(hsoilmicpools         )) DEALLOCATE(hsoilmicpools)
  IF (ALLOCATED(hslowpools            )) DEALLOCATE(hslowpools)
  IF (ALLOCATED(harmoredpools         )) DEALLOCATE(harmoredpools)
                                   
  IF (ALLOCATED(fuelshortage          )) DEALLOCATE(fuelshortage)     
                                      
  IF (ALLOCATED(LtN                   )) DEALLOCATE(LtN)
  IF (ALLOCATED(annK_leaf             )) DEALLOCATE(annK_leaf)
  IF (ALLOCATED(annK_leaf_hg          )) DEALLOCATE(annK_leaf_hg)
  IF (ALLOCATED(annK_wood             )) DEALLOCATE(annK_wood)
  IF (ALLOCATED(annK_froot            )) DEALLOCATE(annK_froot)
  IF (ALLOCATED(K_wood                )) DEALLOCATE(K_wood)
  IF (ALLOCATED(K_froot               )) DEALLOCATE(K_froot)
  IF (ALLOCATED(K_leaf                )) DEALLOCATE(K_leaf)
  IF (ALLOCATED(K_hleaf               )) DEALLOCATE(K_hleaf)
  IF (ALLOCATED(K_hfroot              )) DEALLOCATE(K_hfroot)
  IF (ALLOCATED(K_surfmet             )) DEALLOCATE(K_surfmet)
  IF (ALLOCATED(K_surfstr             )) DEALLOCATE(K_surfstr)
  IF (ALLOCATED(K_soilmet             )) DEALLOCATE(K_soilmet)
  IF (ALLOCATED(K_soilstr             )) DEALLOCATE(K_soilstr)
  IF (ALLOCATED(K_cwd                 )) DEALLOCATE(K_cwd)
  IF (ALLOCATED(K_surfmic             )) DEALLOCATE(K_surfmic)
  IF (ALLOCATED(K_soilmic             )) DEALLOCATE(K_soilmic)
  IF (ALLOCATED(K_slow                )) DEALLOCATE(K_slow)
  IF (ALLOCATED(K_armored             )) DEALLOCATE(K_armored)
  IF (ALLOCATED(slitscalar            )) DEALLOCATE(slitscalar)
  IF (ALLOCATED(shlitscalar           )) DEALLOCATE(shlitscalar)
  IF (ALLOCATED(srootlitscalar        )) DEALLOCATE(srootlitscalar)
  IF (ALLOCATED(sabiotic              )) DEALLOCATE(sabiotic)
  IF (ALLOCATED(sabiotsmc             )) DEALLOCATE(sabiotsmc)
  IF (ALLOCATED(sabiotlign            )) DEALLOCATE(sabiotlign)
  IF (ALLOCATED(metabfract            )) DEALLOCATE(metabfract)
  IF (ALLOCATED(structuralLignin      )) DEALLOCATE(structuralLignin)
  IF (ALLOCATED(lignineffect          )) DEALLOCATE(lignineffect)
  IF (ALLOCATED(soilmicDecayFactor    )) DEALLOCATE(soilmicDecayFactor)
  IF (ALLOCATED(slowDecayFactor       )) DEALLOCATE(slowDecayFactor)
  IF (ALLOCATED(armoredDecayFactor    )) DEALLOCATE(armoredDecayFactor)
  IF (ALLOCATED(fid                   )) DEALLOCATE(fid)
  IF (ALLOCATED(decayClayFactor       )) DEALLOCATE(decayClayFactor)
  IF (ALLOCATED(eff_soilmic2slow      )) DEALLOCATE(eff_soilmic2slow)
  IF (ALLOCATED(latitude              )) DEALLOCATE(latitude)
  IF (ALLOCATED(latitude1             )) DEALLOCATE(latitude1)
  IF (ALLOCATED(fuelwooddemand        )) DEALLOCATE(fuelwooddemand)
  
  IF (ALLOCATED(T1                    )) DEALLOCATE(T1)
  IF (ALLOCATED(T2low                 )) DEALLOCATE(T2low)
  IF (ALLOCATED(T2high                )) DEALLOCATE(T2high)
  IF (ALLOCATED(NPPtemp               )) DEALLOCATE(NPPtemp)
  IF (ALLOCATED(IPAR                  )) DEALLOCATE(IPAR)
  IF (ALLOCATED(NPP                   )) DEALLOCATE(NPP)
  IF (ALLOCATED(epsilona              )) DEALLOCATE(epsilona)
  IF (ALLOCATED(bgtemp                )) DEALLOCATE(bgtemp)
  IF (ALLOCATED(abiotic               )) DEALLOCATE(abiotic)
  IF (ALLOCATED(grass_herbivory       )) DEALLOCATE(grass_herbivory)
  IF (ALLOCATED(trees_herbivory       )) DEALLOCATE(trees_herbivory)
  IF (ALLOCATED(herb_seasonality      )) DEALLOCATE(herb_seasonality)
  IF (ALLOCATED(MINLAI                )) DEALLOCATE(MINLAI)
  IF (ALLOCATED(SUMLAI                )) DEALLOCATE(SUMLAI)
  IF (ALLOCATED(AVELAI                )) DEALLOCATE(AVELAI)
  IF (ALLOCATED(LTVARSUM              )) DEALLOCATE(LTVARSUM)
  IF (ALLOCATED(SUMLAInew             )) DEALLOCATE(SUMLAInew)
  IF (ALLOCATED(litterscalar          )) DEALLOCATE(litterscalar)
  IF (ALLOCATED(hlitterscalar         )) DEALLOCATE(hlitterscalar)
  IF (ALLOCATED(rootlitscalar         )) DEALLOCATE(rootlitscalar)
                                      
  IF (ALLOCATED(ccWood                )) DEALLOCATE(ccWood)
  IF (ALLOCATED(ccLeaf                )) DEALLOCATE(ccLeaf)
  IF (ALLOCATED(PET_current           )) DEALLOCATE(PET_current)
  IF (ALLOCATED(CCratio_current       )) DEALLOCATE(CCratio_current)
  IF (ALLOCATED(ccFineLitter          )) DEALLOCATE(ccFineLitter)
  IF (ALLOCATED(ccCWD                 )) DEALLOCATE(ccCWD)
  IF (ALLOCATED(CCratio_previous      )) DEALLOCATE(CCratio_previous)
  IF (ALLOCATED(mortality_tree        )) DEALLOCATE(mortality_tree)
  IF (ALLOCATED(mortality_hfroot      )) DEALLOCATE(mortality_hfroot)
                                      
  IF (ALLOCATED(leafinput             )) DEALLOCATE(leafinput)
  IF (ALLOCATED(woodinput             )) DEALLOCATE(woodinput)
  IF (ALLOCATED(frootinput            )) DEALLOCATE(frootinput)
  IF (ALLOCATED(herbivory             )) DEALLOCATE(herbivory)
  IF (ALLOCATED(carbonout_leaf        )) DEALLOCATE(carbonout_leaf)
  IF (ALLOCATED(carbonout_abovewood   )) DEALLOCATE(carbonout_abovewood)
  IF (ALLOCATED(carbonout_belowwood   )) DEALLOCATE(carbonout_belowwood)
  IF (ALLOCATED(carbonout_froot       )) DEALLOCATE(carbonout_froot)
  IF (ALLOCATED(carbonout_cwd         )) DEALLOCATE(carbonout_cwd)
  IF (ALLOCATED(carbonout_surfmet     )) DEALLOCATE(carbonout_surfmet)
  IF (ALLOCATED(carbonout_surfstr     )) DEALLOCATE(carbonout_surfstr)
  IF (ALLOCATED(carbonout_soilmet     )) DEALLOCATE(carbonout_soilmet)
  IF (ALLOCATED(carbonout_soilstr     )) DEALLOCATE(carbonout_soilstr)
  IF (ALLOCATED(carbonout_surfmic     )) DEALLOCATE(carbonout_surfmic)
  IF (ALLOCATED(carbonout_soilmic     )) DEALLOCATE(carbonout_soilmic)
  IF (ALLOCATED(carbonout_slow        )) DEALLOCATE(carbonout_slow)
  IF (ALLOCATED(carbonout_armored     )) DEALLOCATE(carbonout_armored)
  IF (ALLOCATED(resppool_surfstr      )) DEALLOCATE(resppool_surfstr)
  IF (ALLOCATED(resppool_surfmet      )) DEALLOCATE(resppool_surfmet)
  IF (ALLOCATED(resppool_surfmic      )) DEALLOCATE(resppool_surfmic)
  IF (ALLOCATED(resppool_soilstr      )) DEALLOCATE(resppool_soilstr)
  IF (ALLOCATED(resppool_soilmet      )) DEALLOCATE(resppool_soilmet)
  IF (ALLOCATED(resppool_soilmic      )) DEALLOCATE(resppool_soilmic)
  IF (ALLOCATED(resppool_slow         )) DEALLOCATE(resppool_slow)
  IF (ALLOCATED(resppool_armored      )) DEALLOCATE(resppool_armored)
  IF (ALLOCATED(resp_surfstr          )) DEALLOCATE(resp_surfstr)
  IF (ALLOCATED(resp_surfmet          )) DEALLOCATE(resp_surfmet)
  IF (ALLOCATED(resp_surfmic          )) DEALLOCATE(resp_surfmic)
  IF (ALLOCATED(resp_soilstr          )) DEALLOCATE(resp_soilstr)
  IF (ALLOCATED(resp_soilmet          )) DEALLOCATE(resp_soilmet)
  IF (ALLOCATED(resp_soilmic          )) DEALLOCATE(resp_soilmic)
  IF (ALLOCATED(resp_slow             )) DEALLOCATE(resp_slow)
  IF (ALLOCATED(resp_armored          )) DEALLOCATE(resp_armored)
  IF (ALLOCATED(temp                  )) DEALLOCATE(temp)
  IF (ALLOCATED(combusted_leaf        )) DEALLOCATE(combusted_leaf)
  IF (ALLOCATED(combusted_abovewood   )) DEALLOCATE(combusted_abovewood)
  IF (ALLOCATED(combusted_cwd         )) DEALLOCATE(combusted_cwd)
  IF (ALLOCATED(combusted_surfstr     )) DEALLOCATE(combusted_surfstr)
  IF (ALLOCATED(combusted_surfmet     )) DEALLOCATE(combusted_surfmet)
  IF (ALLOCATED(combusted_surfmic     )) DEALLOCATE(combusted_surfmic)
  IF (ALLOCATED(combusted_soilstr     )) DEALLOCATE(combusted_soilstr)
  IF (ALLOCATED(combusted_soilmet     )) DEALLOCATE(combusted_soilmet)
  IF (ALLOCATED(combusted_soilmic     )) DEALLOCATE(combusted_soilmic)
  IF (ALLOCATED(combusted_slow        )) DEALLOCATE(combusted_slow)
  IF (ALLOCATED(combusted_armored     )) DEALLOCATE(combusted_armored)
  IF (ALLOCATED(combusted_surfmic     )) DEALLOCATE(combusted_surfmic)
  IF (ALLOCATED(nonCombusted_leaf     )) DEALLOCATE(nonCombusted_leaf)
  
  IF (ALLOCATED(nonCombusted_abovewood)) DEALLOCATE(nonCombusted_abovewood)
  IF (ALLOCATED(nonCombusted_belowwood)) DEALLOCATE(nonCombusted_belowwood)
  IF (ALLOCATED(nonCombusted_froot    )) DEALLOCATE(nonCombusted_froot)
  IF (ALLOCATED(fuelwoodout           )) DEALLOCATE(fuelwoodout)
  IF (ALLOCATED(wresp                 )) DEALLOCATE(wresp)
  IF (ALLOCATED(wcomb                 )) DEALLOCATE(wcomb)
  IF (ALLOCATED(wherb                 )) DEALLOCATE(wherb)
  IF (ALLOCATED(wbiof                 )) DEALLOCATE(wbiof)
  IF (ALLOCATED(hresp                 )) DEALLOCATE(hresp)
  IF (ALLOCATED(hcomb                 )) DEALLOCATE(hcomb)
  IF (ALLOCATED(hherb                 )) DEALLOCATE(hherb)
  
  IF (ALLOCATED(ageClassIndex         )) DEALLOCATE(ageClassIndex)
  IF (ALLOCATED(BFallClasses          )) DEALLOCATE(BFallClasses)
  IF (ALLOCATED(BFleftCurrentMonth    )) DEALLOCATE(BFleftCurrentMonth)
  IF (ALLOCATED(BFtemp                )) DEALLOCATE(BFtemp)
  IF (ALLOCATED(ageCurrentClass       )) DEALLOCATE(ageCurrentClass)
  IF (ALLOCATED(ageClassSorted        )) DEALLOCATE(ageClassSorted)
  IF (ALLOCATED(ageClassSortedInd     )) DEALLOCATE(ageClassSortedInd)
  IF (ALLOCATED(tempAge               )) DEALLOCATE(tempAge)
  IF (ALLOCATED(NPPmonthly            )) DEALLOCATE(NPPmonthly)
  IF (ALLOCATED(respmonthly           )) DEALLOCATE(respmonthly)
  IF (ALLOCATED(combmonthly           )) DEALLOCATE(combmonthly)
  IF (ALLOCATED(herbmonthly           )) DEALLOCATE(herbmonthly)
  IF (ALLOCATED(biofmonthly           )) DEALLOCATE(biofmonthly)
  IF (ALLOCATED(respEQ                )) DEALLOCATE(respEQ)
  IF (ALLOCATED(combEQ                )) DEALLOCATE(combEQ)
  IF (ALLOCATED(herbEQ                )) DEALLOCATE(herbEQ)
  IF (ALLOCATED(biofEQ                )) DEALLOCATE(biofEQ)

  IF (ALLOCATED(veg                   )) DEALLOCATE(veg)
  IF (ALLOCATED(soiltext              )) DEALLOCATE(soiltext)
  IF (ALLOCATED(fuelneed              )) DEALLOCATE(fuelneed)
  IF (ALLOCATED(popdens               )) DEALLOCATE(popdens)
  IF (ALLOCATED(perc_tree             )) DEALLOCATE(perc_tree)
  IF (ALLOCATED(perc_herb             )) DEALLOCATE(perc_herb)
  IF (ALLOCATED(airt                  )) DEALLOCATE(airt)
  IF (ALLOCATED(ppt                   )) DEALLOCATE(ppt)
  IF (ALLOCATED(solrad                )) DEALLOCATE(solrad)
  IF (ALLOCATED(NDVI                  )) DEALLOCATE(NDVI)
  IF (ALLOCATED(BF                    )) DEALLOCATE(BF)
  
  
  IF (ALLOCATED(veg1                  )) DEALLOCATE(veg1)
  IF (ALLOCATED(soiltext1             )) DEALLOCATE(soiltext1)
  IF (ALLOCATED(fuelneed1             )) DEALLOCATE(fuelneed1)
  IF (ALLOCATED(popdens1              )) DEALLOCATE(popdens1)
  IF (ALLOCATED(perc_tree1            )) DEALLOCATE(perc_tree1)
  IF (ALLOCATED(perc_herb1            )) DEALLOCATE(perc_herb1)
  IF (ALLOCATED(frac_tree             )) DEALLOCATE(frac_tree)
  IF (ALLOCATED(frac_herb             )) DEALLOCATE(frac_herb)
  IF (ALLOCATED(frac_veg              )) DEALLOCATE(frac_veg)
  IF (ALLOCATED(airt1                 )) DEALLOCATE(airt1)
  IF (ALLOCATED(ppt1                  )) DEALLOCATE(ppt1)
  IF (ALLOCATED(ppt_mo                )) DEALLOCATE(ppt_mo)
  IF (ALLOCATED(solrad1               )) DEALLOCATE(solrad1)
  IF (ALLOCATED(NDVI1                 )) DEALLOCATE(NDVI1)
  IF (ALLOCATED(BF1                   )) DEALLOCATE(BF1)
  IF (ALLOCATED(gridAreaa             )) DEALLOCATE(gridAreaa)
  IF (ALLOCATED(gridAreab             )) DEALLOCATE(gridAreab)
  IF (ALLOCATED(mask2                 )) DEALLOCATE(mask2)
  IF (ALLOCATED(Hg0dry                )) DEALLOCATE(Hg0dry)
  IF (ALLOCATED(HgIIdry               )) DEALLOCATE(HgIIdry)
  IF (ALLOCATED(HgIIwet               )) DEALLOCATE(HgIIwet)
  IF (ALLOCATED(HgP                   )) DEALLOCATE(HgP)
  IF (ALLOCATED(HgAq                  )) DEALLOCATE(HgAq)
  IF (ALLOCATED(hHgAq                 )) DEALLOCATE(hHgAq)
  IF (ALLOCATED(Hg0_surf_leaf         )) DEALLOCATE(Hg0_surf_leaf)
  IF (ALLOCATED(Hg0_surf_soil         )) DEALLOCATE(Hg0_surf_soil)
  IF (ALLOCATED(HgII_surf_leaf        )) DEALLOCATE(HgII_surf_leaf)
  IF (ALLOCATED(HgII_surf_soil        )) DEALLOCATE(HgII_surf_soil)
  IF (ALLOCATED(maxallLAI             )) DEALLOCATE(maxallLAI)
  IF (ALLOCATED(fstom                 )) DEALLOCATE(fstom)
  IF (ALLOCATED(fleaf                 )) DEALLOCATE(fleaf)
  IF (ALLOCATED(fsoil                 )) DEALLOCATE(fsoil)
  IF (ALLOCATED(fsum                  )) DEALLOCATE(fsum)
  IF (ALLOCATED(freemitted            )) DEALLOCATE(freemitted)
  IF (ALLOCATED(reemitted             )) DEALLOCATE(reemitted)
  IF (ALLOCATED(temp_hg               )) DEALLOCATE(temp_hg)
  IF (ALLOCATED(photoreduced          )) DEALLOCATE(photoreduced)
  IF (ALLOCATED(maxt                  )) DEALLOCATE(maxt) 
  IF (ALLOCATED(abovewoodpool_Hg      )) DEALLOCATE(abovewoodpool_Hg)
  IF (ALLOCATED(belowwoodpool_Hg      )) DEALLOCATE(belowwoodpool_Hg)
  IF (ALLOCATED(leafpool_Hg           )) DEALLOCATE(leafpool_Hg)
  IF (ALLOCATED(frootpool_Hg          )) DEALLOCATE(frootpool_Hg)
  IF (ALLOCATED(cwdpool_Hg            )) DEALLOCATE(cwdpool_Hg)
  IF (ALLOCATED(surfstrpool_Hg        )) DEALLOCATE(surfstrpool_Hg)
  IF (ALLOCATED(surfmetpool_Hg        )) DEALLOCATE(surfmetpool_Hg)
  IF (ALLOCATED(surfmicpool_Hg        )) DEALLOCATE(surfmicpool_Hg)
  IF (ALLOCATED(soilstrpool_Hg        )) DEALLOCATE(soilstrpool_Hg)
  IF (ALLOCATED(soilmetpool_Hg        )) DEALLOCATE(soilmetpool_Hg)
  IF (ALLOCATED(soilmicpool_Hg        )) DEALLOCATE(soilmicpool_Hg)
  IF (ALLOCATED(slowpool_Hg           )) DEALLOCATE(slowpool_Hg)
  IF (ALLOCATED(armoredpool_Hg        )) DEALLOCATE(armoredpool_Hg)
  IF (ALLOCATED(hleafpool_Hg          )) DEALLOCATE(hleafpool_Hg)
  IF (ALLOCATED(hfrootpool_Hg         )) DEALLOCATE(hfrootpool_Hg)
  IF (ALLOCATED(hsurfstrpool_Hg       )) DEALLOCATE(hsurfstrpool_Hg)
  IF (ALLOCATED(hsurfmetpool_Hg       )) DEALLOCATE(hsurfmetpool_Hg)
  IF (ALLOCATED(hsurfmicpool_Hg       )) DEALLOCATE(hsurfmicpool_Hg)
  IF (ALLOCATED(hsoilstrpool_Hg       )) DEALLOCATE(hsoilstrpool_Hg)
  IF (ALLOCATED(hsoilmetpool_Hg       )) DEALLOCATE(hsoilmetpool_Hg)
  IF (ALLOCATED(hsoilmicpool_Hg       )) DEALLOCATE(hsoilmicpool_Hg)
  IF (ALLOCATED(hslowpool_Hg          )) DEALLOCATE(hslowpool_Hg)
  IF (ALLOCATED(harmoredpool_Hg       )) DEALLOCATE(harmoredpool_Hg)
  IF (ALLOCATED(hgout_surfmet         )) DEALLOCATE(hgout_surfmet)
  IF (ALLOCATED(hgout_surfstr         )) DEALLOCATE(hgout_surfstr)
  IF (ALLOCATED(hgout_leaf            )) DEALLOCATE(hgout_leaf)
  IF (ALLOCATED(hgout_soilstr         )) DEALLOCATE(hgout_soilstr)
  IF (ALLOCATED(hgout_surfmic         )) DEALLOCATE(hgout_surfmic)
  IF (ALLOCATED(hgout_soilmic         )) DEALLOCATE(hgout_soilmic)
  IF (ALLOCATED(hgout_soilmet         )) DEALLOCATE(hgout_soilmet)
  IF (ALLOCATED(hgout_slow            )) DEALLOCATE(hgout_slow)
  IF (ALLOCATED(hgout_armored         )) DEALLOCATE(hgout_armored)
  IF (ALLOCATED(resppool_surfmet_hg   )) DEALLOCATE(resppool_surfmet_hg)
  IF (ALLOCATED(resppool_surfmic_hg   )) DEALLOCATE(resppool_surfmic_hg)
  IF (ALLOCATED(resppool_soilstr_hg   )) DEALLOCATE(resppool_soilstr_hg)
  IF (ALLOCATED(resppool_surfstr_hg   )) DEALLOCATE(resppool_surfstr_hg)
  IF (ALLOCATED(resppool_soilmic_hg   )) DEALLOCATE(resppool_soilmic_hg)
  IF (ALLOCATED(resppool_soilmet_hg   )) DEALLOCATE(resppool_soilmet_hg)
  IF (ALLOCATED(resppool_slow_hg      )) DEALLOCATE(resppool_slow_hg)
  IF (ALLOCATED(resppool_armored_hg   )) DEALLOCATE(resppool_armored_hg)
  IF (ALLOCATED(resp_surfmet_hg       )) DEALLOCATE(resp_surfmet_hg)
  IF (ALLOCATED(resp_surfmic_hg       )) DEALLOCATE(resp_surfmic_hg)
  IF (ALLOCATED(resp_soilstr_hg       )) DEALLOCATE(resp_soilstr_hg)
  IF (ALLOCATED(resp_surfstr_hg       )) DEALLOCATE(resp_surfstr_hg)
  IF (ALLOCATED(resp_soilmic_hg       )) DEALLOCATE(resp_soilmic_hg)
  IF (ALLOCATED(resp_soilmet_hg       )) DEALLOCATE(resp_soilmet_hg)
  IF (ALLOCATED(resp_slow_hg          )) DEALLOCATE(resp_slow_hg)
  IF (ALLOCATED(resp_armored_hg       )) DEALLOCATE(resp_armored_hg)
  IF (ALLOCATED(combusted_leaf_hg     )) DEALLOCATE(combusted_leaf_hg)
  IF (ALLOCATED(combusted_surfstr_hg  )) DEALLOCATE(combusted_surfstr_hg)
  IF (ALLOCATED(combusted_surfmet_hg  )) DEALLOCATE(combusted_surfmet_hg)
  IF (ALLOCATED(combusted_surfmic_hg  )) DEALLOCATE(combusted_surfmic_hg)
  IF (ALLOCATED(combusted_soilstr_hg  )) DEALLOCATE(combusted_soilstr_hg)
  IF (ALLOCATED(combusted_soilmet_hg  )) DEALLOCATE(combusted_soilmet_hg)
  IF (ALLOCATED(combusted_soilmic_hg  )) DEALLOCATE(combusted_soilmic_hg)
  IF (ALLOCATED(combusted_slow_hg     )) DEALLOCATE(combusted_slow_hg)
  IF (ALLOCATED(combusted_armored_hg  )) DEALLOCATE(combusted_armored_hg)
  IF (ALLOCATED(combusted_surfmic_hg  )) DEALLOCATE(combusted_surfmic_hg)
  IF (ALLOCATED(nonCombusted_leaf_hg  )) DEALLOCATE(nonCombusted_leaf_hg)
  IF (ALLOCATED(fuelwoodout_hg        )) DEALLOCATE(fuelwoodout_hg)
  IF (ALLOCATED(wresp_hg              )) DEALLOCATE(wresp_hg)
  IF (ALLOCATED(wcomb_hg              )) DEALLOCATE(wcomb_hg)
  IF (ALLOCATED(wherb_hg              )) DEALLOCATE(wherb_hg)
  IF (ALLOCATED(wbiof_hg              )) DEALLOCATE(wbiof_hg)
  IF (ALLOCATED(hresp_hg              )) DEALLOCATE(hresp_hg)
  IF (ALLOCATED(hcomb_hg              )) DEALLOCATE(hcomb_hg)
  IF (ALLOCATED(hherb_hg              )) DEALLOCATE(hherb_hg)
  IF (ALLOCATED(veg_burn              )) DEALLOCATE(veg_burn)
  IF (ALLOCATED(NPPmonthly_hg         )) DEALLOCATE(NPPmonthly_hg)
  IF (ALLOCATED(respmonthly_hg        )) DEALLOCATE(respmonthly_hg)
  IF (ALLOCATED(combmonthly_hg        )) DEALLOCATE(combmonthly_hg)
  IF (ALLOCATED(herbmonthly_hg        )) DEALLOCATE(herbmonthly_hg)
  IF (ALLOCATED(biofmonthly_hg        )) DEALLOCATE(biofmonthly_hg)
  IF (ALLOCATED(respEQ_hg             )) DEALLOCATE(respEQ_hg)
  IF (ALLOCATED(combEQ_hg             )) DEALLOCATE(combEQ_hg)
  IF (ALLOCATED(herbEQ_hg             )) DEALLOCATE(herbEQ_hg)
  IF (ALLOCATED(biofEQ_hg             )) DEALLOCATE(biofEQ_hg)
  IF (ALLOCATED(evapEQ_hg             )) DEALLOCATE(evapEQ_hg)
  IF (ALLOCATED(reemitEQ_hg           )) DEALLOCATE(reemitEQ_hg)
  IF (ALLOCATED(photoEQ_hg            )) DEALLOCATE(photoEQ_hg)
  IF (ALLOCATED(leafpoolEQ_hg         )) DEALLOCATE(leafpoolEQ_hg)
  IF (ALLOCATED(Hg0out                )) DEALLOCATE(Hg0out) 
  IF (ALLOCATED(slowpoolEQ_hg         )) DEALLOCATE(slowpoolEQ_hg)
  IF (ALLOCATED(armoredpoolEQ_hg      )) DEALLOCATE(armoredpoolEQ_hg)
  IF (ALLOCATED(surfstrpoolEQ_hg      )) DEALLOCATE(surfstrpoolEQ_hg)
  IF (ALLOCATED(soilstrpoolEQ_hg      )) DEALLOCATE(soilstrpoolEQ_hg)
  IF (ALLOCATED(surfmetpoolEQ_hg      )) DEALLOCATE(surfmetpoolEQ_hg)
  IF (ALLOCATED(soilmetpoolEQ_hg      )) DEALLOCATE(soilmetpoolEQ_hg)
  IF (ALLOCATED(surfmicpoolEQ_hg      )) DEALLOCATE(surfmicpoolEQ_hg)
  IF (ALLOCATED(soilmicpoolEQ_hg      )) DEALLOCATE(soilmicpoolEQ_hg)
  IF (ALLOCATED(HgAqEQ_hg             )) DEALLOCATE(HgAqEQ_hg)
  IF (ALLOCATED(reemmonthly_hg        )) DEALLOCATE(reemmonthly_hg)
  IF (ALLOCATED(photmonthly_hg        )) DEALLOCATE(photmonthly_hg)
  IF (ALLOCATED(slowmonthly           )) DEALLOCATE(slowmonthly)
  IF (ALLOCATED(armoredmonthly        )) DEALLOCATE(armoredmonthly)
  IF (ALLOCATED(surfstrmonthly        )) DEALLOCATE(surfstrmonthly)
  IF (ALLOCATED(surfmetmonthly        )) DEALLOCATE(surfmetmonthly)
  IF (ALLOCATED(surfmicmonthly        )) DEALLOCATE(surfmicmonthly)
  IF (ALLOCATED(soilstrmonthly        )) DEALLOCATE(soilstrmonthly)
  IF (ALLOCATED(soilmetmonthly        )) DEALLOCATE(soilmetmonthly)
  IF (ALLOCATED(soilmicmonthly        )) DEALLOCATE(soilmicmonthly)
  IF (ALLOCATED(leafmonthly           )) DEALLOCATE(leafmonthly)
  IF (ALLOCATED(slowmonthly_hg        )) DEALLOCATE(slowmonthly_hg)
  IF (ALLOCATED(armoredmonthly_hg     )) DEALLOCATE(armoredmonthly_hg)
  IF (ALLOCATED(surfstrmonthly_hg     )) DEALLOCATE(surfstrmonthly_hg)
  IF (ALLOCATED(surfmetmonthly_hg     )) DEALLOCATE(surfmetmonthly_hg)
  IF (ALLOCATED(surfmicmonthly_hg     )) DEALLOCATE(surfmicmonthly_hg)
  IF (ALLOCATED(soilstrmonthly_hg     )) DEALLOCATE(soilstrmonthly_hg)
  IF (ALLOCATED(soilmetmonthly_hg     )) DEALLOCATE(soilmetmonthly_hg)
  IF (ALLOCATED(soilmicmonthly_hg     )) DEALLOCATE(soilmicmonthly_hg)
  IF (ALLOCATED(leafmonthly_hg        )) DEALLOCATE(leafmonthly_hg)
  IF (ALLOCATED(leafpoolEQ            )) DEALLOCATE(leafpoolEQ)
  IF (ALLOCATED(slowpoolEQ            )) DEALLOCATE(slowpoolEQ)
  IF (ALLOCATED(armoredpoolEQ         )) DEALLOCATE(armoredpoolEQ)
  IF (ALLOCATED(surfstrpoolEQ         )) DEALLOCATE(surfstrpoolEQ)
  IF (ALLOCATED(soilstrpoolEQ         )) DEALLOCATE(soilstrpoolEQ)
  IF (ALLOCATED(surfmetpoolEQ         )) DEALLOCATE(surfmetpoolEQ)
  IF (ALLOCATED(soilmetpoolEQ         )) DEALLOCATE(soilmetpoolEQ)
  IF (ALLOCATED(surfmicpoolEQ         )) DEALLOCATE(surfmicpoolEQ)
  IF (ALLOCATED(soilmicpoolEQ         )) DEALLOCATE(soilmicpoolEQ)
  IF (ALLOCATED(HgAqmonthly           )) DEALLOCATE(HgAqmonthly)
  IF (ALLOCATED(biomeAnnual_Hg        )) DEALLOCATE(biomeAnnual_Hg)
  IF (ALLOCATED(total_tree_hg         )) DEALLOCATE(total_tree_hg)
  IF (ALLOCATED(total_herb_hg         )) DEALLOCATE(total_herb_hg)
  
  IF (ALLOCATED(Hg_pool_fluxes1       )) DEALLOCATE(Hg_pool_fluxes1)
  IF (ALLOCATED(Hg_pool_fluxes2       )) DEALLOCATE(Hg_pool_fluxes2)
  IF (ALLOCATED(Hg_pool_fluxes3       )) DEALLOCATE(Hg_pool_fluxes3)
  IF (ALLOCATED(Hg_pool_fluxes4       )) DEALLOCATE(Hg_pool_fluxes4)
  IF (ALLOCATED(Hg_pool_fluxes5       )) DEALLOCATE(Hg_pool_fluxes5)
  IF (ALLOCATED(Hg_pool_fluxes6       )) DEALLOCATE(Hg_pool_fluxes6)
  
  IF (ALLOCATED(Hg_hpool_fluxes1      )) DEALLOCATE(Hg_hpool_fluxes1)
  IF (ALLOCATED(Hg_hpool_fluxes2      )) DEALLOCATE(Hg_hpool_fluxes2)
  IF (ALLOCATED(Hg_hpool_fluxes3      )) DEALLOCATE(Hg_hpool_fluxes3)
  IF (ALLOCATED(Hg_hpool_fluxes4      )) DEALLOCATE(Hg_hpool_fluxes4)
  IF (ALLOCATED(Hg_hpool_fluxes5      )) DEALLOCATE(Hg_hpool_fluxes5)
  IF (ALLOCATED(Hg_hpool_fluxes6      )) DEALLOCATE(Hg_hpool_fluxes6)
  
  IF (ALLOCATED(f_carbonout_surfmet   )) DEALLOCATE(f_carbonout_surfmet)
  IF (ALLOCATED(f_carbonout_surfstr   )) DEALLOCATE(f_carbonout_surfstr)
  IF (ALLOCATED(f_carbonout_leaf      )) DEALLOCATE(f_carbonout_leaf)
  IF (ALLOCATED(f_carbonout_soilstr   )) DEALLOCATE(f_carbonout_soilstr)
  IF (ALLOCATED(f_carbonout_surfmic   )) DEALLOCATE(f_carbonout_surfmic)
  IF (ALLOCATED(f_carbonout_soilmic   )) DEALLOCATE(f_carbonout_soilmic)
  IF (ALLOCATED(f_carbonout_slow      )) DEALLOCATE(f_carbonout_slow)
  IF (ALLOCATED(f_carbonout_armored   )) DEALLOCATE(f_carbonout_armored)
  IF (ALLOCATED(f_carbonout_soilmet   )) DEALLOCATE(f_carbonout_soilmet)
  
  
END SUBROUTINE CleanupCASAarrays
!EOC
!------------------------------------------------------------------------------
