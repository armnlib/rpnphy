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
!**S/P RAYLEI - RAYLEIGH SCATTERING NEAR INFRARED REGION
!
      subroutine ccc_raylei (taur, ib, dp, il1, il2, ilg, lay)

      implicit none
#include <arch_specific.hf>
!
      integer ilg, lay, ib, il1, il2, ibm1, k, i
      real ri(3), taur(ilg,lay), dp(ilg,lay)
!
!Authors
!
!        J. Li, M. Lazare, CCCMA, rt code for gcm4
!        (Ref: J. Li, H. W. Barker, 2005:
!        JAS Vol. 62, no. 2, pp. 286\226309)
!        P. Vaillancourt, D. Talbot, RPN/CMC;
!        adapted for CMC/RPN physics (May 2006)
!
!Revisions
!
! 001
!
!Object
!
!       Rayleigh scattering for bands2-bands4, near infrared region
!
!Arguments
!
! taur  rayleigh optical depth
! dp    air mass path for a model layer (explained in raddriv).
!
!*
!----------------------------------------------------------------------
!
      data ri / .16305e-04, .17997e-05, .13586e-06 /
!
      ibm1 = ib - 1
      do 100 k = 1, lay
      do 100 i = il1, il2
        taur(i,k) =  ri(ibm1) * dp(i,k)
  100 continue
!
      return
      end