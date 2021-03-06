!-------------------------------------- LICENCE BEGIN ------------------------------------
!Environment Canada - Atmospheric Science and Technology License/Disclaimer, 
!                     version 3; Last Modified: May 7, 2008.
!This is free but copyrighted software; you can use/redistribute/modify it under the terms 
!of the Environment Canada - Atmospheric Science and Technology License/Disclaimer 
!version 3 or (at your option) any later version that should be found at: 
!http://collaboration.cmc.ec.gc.ca/science/rpn.comm/license.html 
!
!This software is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
!without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
!See the above mentioned License/Disclaimer for more details.
!You should have received a copy of the License/Disclaimer along with this software; 
!if not, you can write to: EC-RPN COMM Group, 2121 TransCanada, suite 500, Dorval (Quebec), 
!CANADA, H9P 1J3; or send e-mail to service.rpn@ec.gc.ca
!-------------------------------------- LICENCE END --------------------------------------

! Declaration and initialization of indices for phybus


module phybus
   public
   save

   !#TODO: bus pointers? ptr full, ptr to trnch?
!!$   integer :: esiz = 0
!!$   integer :: dsiz = 0
!!$   integer :: fsiz = 0
!!$   integer :: vsiz = 0

   real, pointer :: entbus(:,:) => null()
   real, pointer :: dynbus(:,:) => null()
   real, pointer :: perbus(:,:) => null()
   real, pointer :: volbus(:,:) => null()

   integer :: effradc=0
   integer :: effradi=0

   integer :: i1qtplus=0
   integer :: i1qmplus=0
   integer :: i1ntplus=0
   integer :: i1bvplus=0

   integer :: i2qtplus=0
   integer :: i2qmplus=0
   integer :: i2ntplus=0
   integer :: i2bvplus=0
 
   integer :: i3qtplus=0
   integer :: i3qmplus=0
   integer :: i3ntplus=0
   integer :: i3bvplus=0

   integer :: i4qtplus=0
   integer :: i4qmplus=0
   integer :: i4ntplus=0
   integer :: i4bvplus=0

   integer :: ae=0
   integer :: afoudre=0
   integer :: aip=0
   integer :: aip3d=0
   integer :: alc=0
   integer :: alcs=0
   integer :: alfaq=0
   integer :: alfat=0
   integer :: als=0
   integer :: als_rn1=0
   integer :: als_rn2=0
   integer :: als_fr1=0
   integer :: als_fr2=0
   integer :: alvis=0
   integer :: ap=0
   integer :: areaup=0
   integer :: asc=0
   integer :: ascs=0
   integer :: ass=0
   integer :: ass_sn1=0
   integer :: ass_sn2=0
   integer :: ass_sn3=0
   integer :: ass_pe1=0
   integer :: ass_pe2=0
   integer :: ass_pe2l=0
   integer :: ass_mx=0
   integer :: ass_snd=0
   integer :: ass_s2l=0
   integer :: at2e=0
   integer :: at2m=0
   integer :: at2t=0
   integer :: au2t=0
   integer :: azr=0
   integer :: azr3d=0
   integer :: basc=0
   integer :: bm=0
   integer :: bt=0
   integer :: tdmask=0
   integer :: c1slop=0
   integer :: c2slop=0
   integer :: c3slop=0
   integer :: c4slop=0
   integer :: c5slop=0
   integer :: cang=0
   integer :: capekfc=0
   integer :: capekfcm=0
   integer :: ccnm=0
   integer :: clb=0
   integer :: clbaf=0
   integer :: cldrad=0
   integer :: cldradm=0
   integer :: clr=0
   integer :: cls=0
   integer :: clt=0
   integer :: cltaf=0
   integer :: cosas=0
   integer :: cosz=0
   integer :: cqe=0
   integer :: csb=0
   integer :: csbaf=0
   integer :: cstt=0
   integer :: cstaf=0
   integer :: ctp=0
   integer :: cte=0
   integer :: ctt=0
   integer :: ctue=0
   integer :: dct_bh=0
   integer :: dct_count=0
   integer :: dct_lvl=0
   integer :: dct_lvlmax=0
   integer :: dct_lvlmin=0
   integer :: dct_moref=0
   integer :: dct_sndmax=0
   integer :: dct_sndmin=0
   integer :: dct_str=0
   integer :: dct_thick=0
   integer :: dct_trdmax=0
   integer :: dct_trdmin=0
   integer :: dhdx=0
   integer :: dhdxdy=0
   integer :: dhdxdyen=0
   integer :: dhdxen=0
   integer :: dhdy=0
   integer :: dhdyen=0
   integer :: dlat=0
   integer :: dlon=0
   integer :: dm_c=0
   integer :: dm_g=0
   integer :: dm_h=0
   integer :: dm_i=0
   integer :: dm_r=0
   integer :: dm_s=0
   integer :: dmfkfc=0
   integer :: dmfkfcm=0
   integer :: dxdy=0
   integer :: ecc=0
   integer :: eccl=0
   integer :: eccm=0
   integer :: ecch=0
   integer :: ei=0
   integer :: eiaf=0
   integer :: en=0
   integer :: enmoins=0
   integer :: epstfn=0
   integer :: esdiag=0
   integer :: ev=0
   integer :: ev0=0
   integer :: evaf=0
   integer :: evapo=0
   integer :: f12=0
   integer :: fadb=0
   integer :: fafb=0
   integer :: fatb=0
   integer :: fbl=0
   integer :: fc=0
   integer :: fcaf=0
   integer :: fcdb=0
   integer :: fcfb=0
   integer :: fcmy=0
   integer :: fcor=0
   integer :: fcpflg=0
   integer :: fctb=0
   integer :: fdc=0
   integer :: fdsi=0
   integer :: fdss=0
   integer :: fdss0=0
   integer :: fevp=0
   integer :: fiaf=0
   integer :: fice=0
   integer :: fip=0
   integer :: fl=0
   integer :: flaf=0
   integer :: flagmxp=0
   integer :: flusolaf=0
   integer :: flusolis=0
   integer :: fluslop=0
   integer :: fluxdl=0
   integer :: fluxds=0
   integer :: fluxds0=0
   integer :: fluxul=0
   integer :: fluxus=0
   integer :: fluxus0=0
   integer :: fneige=0
   integer :: fnn=0
   integer :: fnsi=0
   integer :: foudre=0
   integer :: fq=0
   integer :: fqaf=0
   integer :: frv=0
   integer :: fsa=0
   integer :: fsaf=0
   integer :: fsamoon=0
   integer :: fsc=0
   integer :: fsd=0
   integer :: fsdaf=0
   integer :: fsd0=0
   integer :: fsf=0
   integer :: fsfaf=0
   integer :: fsf0=0
   integer :: fsg=0
   integer :: fsi=0
   integer :: fsiaf=0
   integer :: fsi0=0
   integer :: fsv=0
   integer :: fsvaf=0
   integer :: fsv0=0
   integer :: ftemp=0
   integer :: ftot=0
   integer :: fv=0
   integer :: fvaf=0
   integer :: fvap=0
   integer :: fvmy=0
   integer :: fxp=0
   integer :: gc=0
   integer :: glsea=0
   integer :: gq=0
   integer :: gql=0
   integer :: gte=0
   integer :: gz_moins=0
   integer :: gzmom=0
   integer :: gztherm=0
   integer :: h=0
   integer :: h_cb=0
   integer :: h_ml=0
   integer :: h_m2=0
   integer :: h_sn=0
   integer :: hrsmax=0
   integer :: hrsmin=0
   integer :: hst=0
   integer :: hucond=0
   integer :: hufcp=0
   integer :: hufcpm=0
   integer :: humoins=0
   integer :: huphytd=0
   integer :: huphytdm=0
   integer :: huplus=0
   integer :: husavg=0
   integer :: hushal=0
   integer :: hushalm=0
   integer :: icep=0
   integer :: ictp=0
   integer :: icw=0
   integer :: ilmo=0
   integer :: isun=0
   integer :: itau=0
   integer :: itcf=0
   integer :: itp=0
   integer :: iv=0
   integer :: ivaf=0
   integer :: iwc=0
   integer :: iwcm=0
   integer :: iwcrad=0
   integer :: iwcradm=0
   integer :: iwp=0
   integer :: iwv=0
   integer :: iwvm=0
   integer :: iwv700=0
   integer :: kcl=0
   integer :: kfcrf=0
   integer :: kfcsf=0
   integer :: kkfc=0
   integer :: kkfcm=0
   integer :: km=0
   integer :: kshal=0
   integer :: kshalm=0
   integer :: kt=0
   integer :: ldifv=0
   integer :: lhtg=0
   integer :: lhtgen=0
   integer :: lwc=0
   integer :: lwcm=0
   integer :: lwcrad=0
   integer :: lwcradm=0
   integer :: lwp2=0
   integer :: me_moins=0
   integer :: mg=0
   integer :: ml=0
   integer :: mol=0
   integer :: mrk2=0
   integer :: mrkv=0
   integer :: mtdir=0
   integer :: nbas=0
   integer :: ncphytd=0
   integer :: ncmoins=0
   integer :: ncplus=0
   integer :: ngphytd=0
   integer :: ngmoins=0
   integer :: ngplus=0
   integer :: nhaut=0
   integer :: nhphytd=0
   integer :: nhmoins=0
   integer :: nhplus=0
   integer :: niphytd=0
   integer :: nimoins=0
   integer :: niplus=0
   integer :: nmoy=0
   integer :: nnphytd=0
   integer :: nnmoins=0
   integer :: nnplus=0
   integer :: nrphytd=0
   integer :: nrmoins=0
   integer :: nrplus=0
   integer :: nt=0
   integer :: ntaf=0
   integer :: oztoit=0
   integer :: o3s=0
   integer :: p0_moins=0
   integer :: p0avg=0
   integer :: parr=0
   integer :: parraf=0
   integer :: parr0=0
   integer :: pbl_gq=0
   integer :: pbl_gql=0
   integer :: pbl_gte=0
   integer :: pbl_km=0
   integer :: pbl_kt=0
   integer :: pbl_qcmoins=0
   integer :: pbl_qtbl=0
   integer :: pbl_humoins=0
   integer :: pbl_tke=0
   integer :: pbl_tmoins=0
   integer :: pbl_turbreg=0
   integer :: pbl_umoins=0
   integer :: pbl_vmoins=0
   integer :: pbl_zn=0
   integer :: pblm_humoins=0
   integer :: pblm_qcmoins=0
   integer :: pblm_tmoins=0
   integer :: pblm_umoins=0
   integer :: pblm_vmoins=0
   integer :: pc=0
   integer :: peffkfc=0
   integer :: phit0=0
   integer :: pmoins=0
   integer :: pr=0
   integer :: prcten=0
   integer :: priten=0
   integer :: py=0
   integer :: pz=0
   integer :: qadv=0
   integer :: qadvm=0
   integer :: qcphytd=0
   integer :: qckfc=0
   integer :: qckfcm=0
   integer :: qcmoins=0
   integer :: qcplus=0
   integer :: qcz=0
   integer :: qdiag=0
   integer :: qdifv=0
   integer :: qdifvm=0
   integer :: qgphytd=0
   integer :: qgmoins=0
   integer :: qgplus=0
   integer :: qhphytd=0
   integer :: qhmoins=0
   integer :: qhplus=0
   integer :: qiphytd=0
   integer :: qimoins=0
   integer :: qiplus=0
   integer :: qldi=0
   integer :: qlsc=0
   integer :: qmetox=0
   integer :: qmetoxm=0
   integer :: qnphytd=0
   integer :: qnmoins=0
   integer :: qnplus=0
   integer :: qrphytd=0
   integer :: qrkfc=0
   integer :: qrmoins=0
   integer :: qrplus=0
   integer :: qsdi=0
   integer :: qssc=0
   integer :: qsurf=0
   integer :: qtbl=0
   integer :: qtde=0
   integer :: rainaf=0
   integer :: rainrate=0
   integer :: rc=0
   integer :: rckfc=0
   integer :: rhdiag=0
   integer :: rib=0
   integer :: rif=0
   integer :: rig=0
   integer :: rice_int=0
   integer :: rliq_int=0
   integer :: rn=0
   integer :: rnflx=0
   integer :: rr=0
   integer :: rt=0
   integer :: ry=0
   integer :: rz=0
   integer :: salb6z=0
   integer :: scl=0
   integer :: sdtswd=0
   integer :: sdtsws=0
   integer :: shear2=0
   integer :: siaf=0
   integer :: sigm=0
   integer :: sigt=0
   integer :: sigw=0  !#set to sigm/t in sigmalev
   integer :: sla=0
   integer :: slope=0
   integer :: slw=0
   integer :: slwp=0
   integer :: slwp2=0
   integer :: slwp3=0
   integer :: slwp4=0
   integer :: sn=0
   integer :: snoflx=0
   integer :: snowaf=0
   integer :: snowrate=0
   integer :: sqe=0
   integer :: ss01=0
   integer :: ss02=0
   integer :: ss03=0
   integer :: ss04=0
   integer :: ss05=0
   integer :: ss06=0
   integer :: ss07=0
   integer :: ss08=0
   integer :: ss09=0
   integer :: ss10=0
   integer :: ss11=0
   integer :: ss12=0
   integer :: ss13=0
   integer :: ss14=0
   integer :: ss15=0
   integer :: ss16=0
   integer :: ss17=0
   integer :: ss18=0
   integer :: ss19=0
   integer :: ss20=0
   integer :: ste=0
   integer :: suaf=0
   integer :: svaf=0
   integer :: t2=0
   integer :: t20=0
   integer :: t2m=0
   integer :: tadv=0
   integer :: tadvm=0
   integer :: tadvmin=0
   integer :: tadvmax=0
   integer :: tcc=0
   integer :: tcond=0
   integer :: tdew=0
   integer :: tdiag=0
   integer :: tdiagavg=0
   integer :: tdifv=0
   integer :: tdifvm=0
   integer :: tfcp=0
   integer :: tfcpm=0
   integer :: tgno=0
   integer :: tgnom=0
   integer :: thetaa=0
   integer :: ti=0
   integer :: tim=0
   integer :: tiwp=0
   integer :: tiwpm=0
   integer :: tiwpin=0
   integer :: tlc=0
   integer :: tlcs=0
   integer :: tls=0
   integer :: tlwp=0
   integer :: tlwpm=0
   integer :: tlwpin=0
   integer :: tmoins=0
   integer :: topthi=0
   integer :: topthw=0
   integer :: tphytd=0
   integer :: tphytdm=0
   integer :: tplus=0
   integer :: tqcx=0
   integer :: trad=0
   integer :: tsc=0
   integer :: tscs=0
   integer :: tshal=0
   integer :: tshalm=0
   integer :: tsrad=0
   integer :: tss=0
   integer :: tls_rn1=0
   integer :: tls_rn2=0
   integer :: tls_fr1=0
   integer :: tls_fr2=0
   integer :: tss_sn1=0
   integer :: tss_sn2=0
   integer :: tss_sn3=0
   integer :: tss_pe1=0
   integer :: tss_pe2=0
   integer :: tss_pe2l=0
   integer :: tss_mx=0
   integer :: tss_snd=0
   integer :: tss_s2l=0
   integer :: tsurf=0
   integer :: ttmax=0
   integer :: ttmin=0
   integer :: turbreg=0
   integer :: tusc=0
   integer :: tve=0
   integer :: tvsc=0
   integer :: uadv=0
   integer :: uadvm=0
   integer :: udcm=0
   integer :: udiag=0
   integer :: udifv=0
   integer :: udifvm=0
   integer :: ue=0
   integer :: ufcp=0
   integer :: ugno=0
   integer :: ugnom=0
   integer :: ugwd=0
   integer :: ugwdm=0
   integer :: umfkfc=0
   integer :: umfkfcm=0
   integer :: umoins=0
   integer :: uplus=0
   integer :: uphytd=0
   integer :: uphytdm=0
   integer :: uscm=0
   integer :: ustress=0
   integer :: uvsavg=0
   integer :: uvsmax=0
   integer :: vdiag=0
   integer :: vadv=0
   integer :: vadvm=0
   integer :: vdcm=0
   integer :: vdifv=0
   integer :: vdifvm=0
   integer :: vfcp=0
   integer :: vgno=0
   integer :: vgnom=0
   integer :: vgwd=0
   integer :: vgwdm=0
   integer :: vis=0
   integer :: vis1=0
   integer :: vis2=0
   integer :: vis3=0
   integer :: vlmax=0
   integer :: vmoins=0
   integer :: vozo=0
   integer :: vplus=0
   integer :: vphytd=0
   integer :: vphytdm=0
   integer :: vscm=0
   integer :: vsmax=0
   integer :: vstress=0
   integer :: vv1=0
   integer :: wdifv=0
   integer :: wge=0
   integer :: wgmax=0
   integer :: wgmin=0
   integer :: wphytd=0
   integer :: wplus=0
   integer :: wstar=0
   integer :: wumaxkfc=0
   integer :: wumkfcm=0
   integer :: xcent=0
   integer :: z0=0
   integer :: z0t=0
   integer :: z1=0
   integer :: z2=0
   integer :: z3=0
   integer :: z4=0
   integer :: za=0
   integer :: zbasekfc=0
   integer :: zbaskfcm=0
   integer :: zcqcem=0
   integer :: zcqem=0
   integer :: zctem=0
   integer :: zd=0
   integer :: ze=0
   integer :: zec=0
   integer :: zet=0
   integer :: zn=0
   integer :: zrflag=0
   integer :: zsqcem=0
   integer :: zsqem=0
   integer :: zstem=0
   integer :: ztopkfc=0
   integer :: ztopkfcm=0
   integer :: ztsl=0
   integer :: zusl=0

end module phybus
