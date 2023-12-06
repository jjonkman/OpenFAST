!STARTOFREGISTRYGENERATEDFILE 'Waves_Types.f90'
!
! WARNING This file is generated automatically by the FAST registry.
! Do not edit.  Your changes to this file will be lost.
!
! FAST Registry
!*********************************************************************************************************************************
! Waves_Types
!.................................................................................................................................
! This file is part of Waves.
!
! Copyright (C) 2012-2016 National Renewable Energy Laboratory
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.
!
!
! W A R N I N G : This file was automatically generated from the FAST registry.  Changes made to this file may be lost.
!
!*********************************************************************************************************************************
!> This module contains the user-defined types needed in Waves. It also contains copy, destroy, pack, and
!! unpack routines associated with each defined data type. This code is automatically generated by the FAST Registry.
MODULE Waves_Types
!---------------------------------------------------------------------------------------------------------------------------------
USE NWTC_Library
IMPLICIT NONE
! =========  Waves_InitInputType  =======
  TYPE, PUBLIC :: Waves_InitInputType
    CHARACTER(1024)  :: InputFile      !< Name of the input file [-]
    CHARACTER(1024)  :: DirRoot      !< The name of the root file including the full path.  This may be useful if you want this routine to write a permanent record of what it does to be stored with the simulation results: the results should be stored in a file whose name (including path) is generated by appending any suitable extension to DirRoot. [-]
    CHARACTER(1024)  :: WvKinFile      !< The root name of user input wave kinematics files [-]
    REAL(ReKi)  :: Gravity = 0.0_ReKi      !< Gravitational acceleration [(m/s^2)]
    INTEGER(IntKi) , DIMENSION(1:3)  :: nGrid = 0_IntKi      !< Grid dimensions [-]
    INTEGER(IntKi)  :: WaveNDir = 0_IntKi      !< Number of wave directions [only used if WaveDirMod = 1] [Must be an odd number -- will be adjusted within the waves module] [(-)]
    REAL(SiKi)  :: WaveDirSpread = 0.0_R4Ki      !< Spreading coefficient [WaveMod=2,3,4 and WaveDirMod=1] [-]
    REAL(SiKi)  :: WaveDirRange = 0.0_R4Ki      !< Range of wave directions (full range: WaveDir +/- WaveDirRange/2) [only used if WaveMod=6] [(degrees)]
    REAL(DbKi)  :: WaveDT = 0.0_R8Ki      !< Time step for incident wave calculations [(sec)]
    REAL(SiKi)  :: WaveHs = 0.0_R4Ki      !< Significant wave height of incident waves [(meters)]
    LOGICAL  :: WaveNDAmp = .false.      !< Flag for normally-distributed amplitudes in incident waves spectrum [flag] [-]
    REAL(SiKi)  :: WavePhase = 0.0_R4Ki      !< Specified phase for regular waves [(radians)]
    REAL(SiKi)  :: WavePkShp = 0.0_R4Ki      !< Peak shape parameter of incident wave spectrum [1.0 for Pierson-Moskowitz] [-]
    REAL(DbKi)  :: WaveTMax = 0.0_R8Ki      !< Analysis time for incident wave calculations; the actual analysis time may be larger than this value in order for the maintain an effecient FFT [(sec)]
    REAL(SiKi)  :: WaveTp = 0.0_R4Ki      !< Peak spectral period of incident waves [(sec)]
    INTEGER(IntKi)  :: NWaveElevGrid = 0_IntKi      !< Number of grid points where the incident wave elevations are computed (the XY grid point locations) [-]
    INTEGER(IntKi)  :: NWaveKinGrid = 0_IntKi      !< Number of grid points where the incident wave kinematics will be computed [-]
    REAL(SiKi) , DIMENSION(:), ALLOCATABLE  :: WaveKinGridxi      !< xi-coordinates for grid points where the incident wave kinematics will be computed (grid points); these are relative to the mean sea level [(meters)]
    REAL(SiKi) , DIMENSION(:), ALLOCATABLE  :: WaveKinGridyi      !< yi-coordinates for grid points where the incident wave kinematics will be computed (grid points); these are relative to the mean sea level [(meters)]
    REAL(SiKi) , DIMENSION(:), ALLOCATABLE  :: WaveKinGridzi      !< zi-coordinates for grid points where the incident wave kinematics will be computed (grid points); these are relative to the mean sea level [(meters)]
    REAL(SiKi) , DIMENSION(:), ALLOCATABLE  :: CurrVxi      !< xi-component of the current velocity at elevation i [(m/s)]
    REAL(SiKi) , DIMENSION(:), ALLOCATABLE  :: CurrVyi      !< yi-component of the current velocity at elevation i [(m/s)]
    REAL(SiKi)  :: PCurrVxiPz0 = 0.0_R4Ki      !< xi-component of the partial derivative of the current velocity at elevation near mean sea level [(m/s)]
    REAL(SiKi)  :: PCurrVyiPz0 = 0.0_R4Ki      !< yi-component of the partial derivative of the current velocity at elevation near mean sea level [(m/s)]
    TYPE(NWTC_RandomNumber_ParameterType)  :: RNG      !< Parameters for the pseudo random number generator [-]
    INTEGER(IntKi)  :: ConstWaveMod = 0_IntKi      !< Mode of the constrained wave [-]
    REAL(SiKi)  :: CrestHmax = 0.0_R4Ki      !< crest height or double the crest elevation [m]
    REAL(SiKi)  :: CrestTime = 0.0_R4Ki      !< time of the wave crest [sec]
    REAL(SiKi)  :: CrestXi = 0.0_R4Ki      !< xi-coordinate for the wave crest [m]
    REAL(SiKi)  :: CrestYi = 0.0_R4Ki      !< yi-coordinate for the wave crest [m]
    INTEGER(IntKi)  :: WaveFieldMod = 0_IntKi      !< Wave field handling (-) (switch) 0: use individual SeaState inputs without adjustment, 1: adjust wave phases based on turbine offsets from farm origin [-]
    REAL(ReKi)  :: PtfmLocationX = 0.0_ReKi      !< Supplied by Driver:  X coordinate of platform location in the wave field [m]
    REAL(ReKi)  :: PtfmLocationY = 0.0_ReKi      !< Supplied by Driver:  Y coordinate of platform location in the wave field [m]
  END TYPE Waves_InitInputType
! =======================
! =========  Waves_InitOutputType  =======
  TYPE, PUBLIC :: Waves_InitOutputType
    INTEGER(IntKi)  :: WaveNDir = 0_IntKi      !< Number of wave directions [only used if WaveDirMod = 1] [Must be an odd number -- will be adjusted within the waves module] [(-)]
    REAL(DbKi)  :: WaveTMax = 0.0_R8Ki      !< Analysis time for incident wave calculations; the actual analysis time may be larger than this value in order for the maintain an effecient FFT [(sec)]
  END TYPE Waves_InitOutputType
! =======================
CONTAINS

subroutine Waves_CopyInitInput(SrcInitInputData, DstInitInputData, CtrlCode, ErrStat, ErrMsg)
   type(Waves_InitInputType), intent(in) :: SrcInitInputData
   type(Waves_InitInputType), intent(inout) :: DstInitInputData
   integer(IntKi),  intent(in   ) :: CtrlCode
   integer(IntKi),  intent(  out) :: ErrStat
   character(*),    intent(  out) :: ErrMsg
   integer(B8Ki)                  :: LB(1), UB(1)
   integer(IntKi)                 :: ErrStat2
   character(ErrMsgLen)           :: ErrMsg2
   character(*), parameter        :: RoutineName = 'Waves_CopyInitInput'
   ErrStat = ErrID_None
   ErrMsg  = ''
   DstInitInputData%InputFile = SrcInitInputData%InputFile
   DstInitInputData%DirRoot = SrcInitInputData%DirRoot
   DstInitInputData%WvKinFile = SrcInitInputData%WvKinFile
   DstInitInputData%Gravity = SrcInitInputData%Gravity
   DstInitInputData%nGrid = SrcInitInputData%nGrid
   DstInitInputData%WaveNDir = SrcInitInputData%WaveNDir
   DstInitInputData%WaveDirSpread = SrcInitInputData%WaveDirSpread
   DstInitInputData%WaveDirRange = SrcInitInputData%WaveDirRange
   DstInitInputData%WaveDT = SrcInitInputData%WaveDT
   DstInitInputData%WaveHs = SrcInitInputData%WaveHs
   DstInitInputData%WaveNDAmp = SrcInitInputData%WaveNDAmp
   DstInitInputData%WavePhase = SrcInitInputData%WavePhase
   DstInitInputData%WavePkShp = SrcInitInputData%WavePkShp
   DstInitInputData%WaveTMax = SrcInitInputData%WaveTMax
   DstInitInputData%WaveTp = SrcInitInputData%WaveTp
   DstInitInputData%NWaveElevGrid = SrcInitInputData%NWaveElevGrid
   DstInitInputData%NWaveKinGrid = SrcInitInputData%NWaveKinGrid
   if (allocated(SrcInitInputData%WaveKinGridxi)) then
      LB(1:1) = lbound(SrcInitInputData%WaveKinGridxi, kind=B8Ki)
      UB(1:1) = ubound(SrcInitInputData%WaveKinGridxi, kind=B8Ki)
      if (.not. allocated(DstInitInputData%WaveKinGridxi)) then
         allocate(DstInitInputData%WaveKinGridxi(LB(1):UB(1)), stat=ErrStat2)
         if (ErrStat2 /= 0) then
            call SetErrStat(ErrID_Fatal, 'Error allocating DstInitInputData%WaveKinGridxi.', ErrStat, ErrMsg, RoutineName)
            return
         end if
      end if
      DstInitInputData%WaveKinGridxi = SrcInitInputData%WaveKinGridxi
   end if
   if (allocated(SrcInitInputData%WaveKinGridyi)) then
      LB(1:1) = lbound(SrcInitInputData%WaveKinGridyi, kind=B8Ki)
      UB(1:1) = ubound(SrcInitInputData%WaveKinGridyi, kind=B8Ki)
      if (.not. allocated(DstInitInputData%WaveKinGridyi)) then
         allocate(DstInitInputData%WaveKinGridyi(LB(1):UB(1)), stat=ErrStat2)
         if (ErrStat2 /= 0) then
            call SetErrStat(ErrID_Fatal, 'Error allocating DstInitInputData%WaveKinGridyi.', ErrStat, ErrMsg, RoutineName)
            return
         end if
      end if
      DstInitInputData%WaveKinGridyi = SrcInitInputData%WaveKinGridyi
   end if
   if (allocated(SrcInitInputData%WaveKinGridzi)) then
      LB(1:1) = lbound(SrcInitInputData%WaveKinGridzi, kind=B8Ki)
      UB(1:1) = ubound(SrcInitInputData%WaveKinGridzi, kind=B8Ki)
      if (.not. allocated(DstInitInputData%WaveKinGridzi)) then
         allocate(DstInitInputData%WaveKinGridzi(LB(1):UB(1)), stat=ErrStat2)
         if (ErrStat2 /= 0) then
            call SetErrStat(ErrID_Fatal, 'Error allocating DstInitInputData%WaveKinGridzi.', ErrStat, ErrMsg, RoutineName)
            return
         end if
      end if
      DstInitInputData%WaveKinGridzi = SrcInitInputData%WaveKinGridzi
   end if
   if (allocated(SrcInitInputData%CurrVxi)) then
      LB(1:1) = lbound(SrcInitInputData%CurrVxi, kind=B8Ki)
      UB(1:1) = ubound(SrcInitInputData%CurrVxi, kind=B8Ki)
      if (.not. allocated(DstInitInputData%CurrVxi)) then
         allocate(DstInitInputData%CurrVxi(LB(1):UB(1)), stat=ErrStat2)
         if (ErrStat2 /= 0) then
            call SetErrStat(ErrID_Fatal, 'Error allocating DstInitInputData%CurrVxi.', ErrStat, ErrMsg, RoutineName)
            return
         end if
      end if
      DstInitInputData%CurrVxi = SrcInitInputData%CurrVxi
   end if
   if (allocated(SrcInitInputData%CurrVyi)) then
      LB(1:1) = lbound(SrcInitInputData%CurrVyi, kind=B8Ki)
      UB(1:1) = ubound(SrcInitInputData%CurrVyi, kind=B8Ki)
      if (.not. allocated(DstInitInputData%CurrVyi)) then
         allocate(DstInitInputData%CurrVyi(LB(1):UB(1)), stat=ErrStat2)
         if (ErrStat2 /= 0) then
            call SetErrStat(ErrID_Fatal, 'Error allocating DstInitInputData%CurrVyi.', ErrStat, ErrMsg, RoutineName)
            return
         end if
      end if
      DstInitInputData%CurrVyi = SrcInitInputData%CurrVyi
   end if
   DstInitInputData%PCurrVxiPz0 = SrcInitInputData%PCurrVxiPz0
   DstInitInputData%PCurrVyiPz0 = SrcInitInputData%PCurrVyiPz0
   call NWTC_Library_CopyNWTC_RandomNumber_ParameterType(SrcInitInputData%RNG, DstInitInputData%RNG, CtrlCode, ErrStat2, ErrMsg2)
   call SetErrStat(ErrStat2, ErrMsg2, ErrStat, ErrMsg, RoutineName)
   if (ErrStat >= AbortErrLev) return
   DstInitInputData%ConstWaveMod = SrcInitInputData%ConstWaveMod
   DstInitInputData%CrestHmax = SrcInitInputData%CrestHmax
   DstInitInputData%CrestTime = SrcInitInputData%CrestTime
   DstInitInputData%CrestXi = SrcInitInputData%CrestXi
   DstInitInputData%CrestYi = SrcInitInputData%CrestYi
   DstInitInputData%WaveFieldMod = SrcInitInputData%WaveFieldMod
   DstInitInputData%PtfmLocationX = SrcInitInputData%PtfmLocationX
   DstInitInputData%PtfmLocationY = SrcInitInputData%PtfmLocationY
end subroutine

subroutine Waves_DestroyInitInput(InitInputData, ErrStat, ErrMsg)
   type(Waves_InitInputType), intent(inout) :: InitInputData
   integer(IntKi),  intent(  out) :: ErrStat
   character(*),    intent(  out) :: ErrMsg
   integer(IntKi)                 :: ErrStat2
   character(ErrMsgLen)           :: ErrMsg2
   character(*), parameter        :: RoutineName = 'Waves_DestroyInitInput'
   ErrStat = ErrID_None
   ErrMsg  = ''
   if (allocated(InitInputData%WaveKinGridxi)) then
      deallocate(InitInputData%WaveKinGridxi)
   end if
   if (allocated(InitInputData%WaveKinGridyi)) then
      deallocate(InitInputData%WaveKinGridyi)
   end if
   if (allocated(InitInputData%WaveKinGridzi)) then
      deallocate(InitInputData%WaveKinGridzi)
   end if
   if (allocated(InitInputData%CurrVxi)) then
      deallocate(InitInputData%CurrVxi)
   end if
   if (allocated(InitInputData%CurrVyi)) then
      deallocate(InitInputData%CurrVyi)
   end if
   call NWTC_Library_DestroyNWTC_RandomNumber_ParameterType(InitInputData%RNG, ErrStat2, ErrMsg2)
   call SetErrStat(ErrStat2, ErrMsg2, ErrStat, ErrMsg, RoutineName)
end subroutine

subroutine Waves_PackInitInput(Buf, Indata)
   type(PackBuffer), intent(inout) :: Buf
   type(Waves_InitInputType), intent(in) :: InData
   character(*), parameter         :: RoutineName = 'Waves_PackInitInput'
   if (Buf%ErrStat >= AbortErrLev) return
   call RegPack(Buf, InData%InputFile)
   call RegPack(Buf, InData%DirRoot)
   call RegPack(Buf, InData%WvKinFile)
   call RegPack(Buf, InData%Gravity)
   call RegPack(Buf, InData%nGrid)
   call RegPack(Buf, InData%WaveNDir)
   call RegPack(Buf, InData%WaveDirSpread)
   call RegPack(Buf, InData%WaveDirRange)
   call RegPack(Buf, InData%WaveDT)
   call RegPack(Buf, InData%WaveHs)
   call RegPack(Buf, InData%WaveNDAmp)
   call RegPack(Buf, InData%WavePhase)
   call RegPack(Buf, InData%WavePkShp)
   call RegPack(Buf, InData%WaveTMax)
   call RegPack(Buf, InData%WaveTp)
   call RegPack(Buf, InData%NWaveElevGrid)
   call RegPack(Buf, InData%NWaveKinGrid)
   call RegPack(Buf, allocated(InData%WaveKinGridxi))
   if (allocated(InData%WaveKinGridxi)) then
      call RegPackBounds(Buf, 1, lbound(InData%WaveKinGridxi, kind=B8Ki), ubound(InData%WaveKinGridxi, kind=B8Ki))
      call RegPack(Buf, InData%WaveKinGridxi)
   end if
   call RegPack(Buf, allocated(InData%WaveKinGridyi))
   if (allocated(InData%WaveKinGridyi)) then
      call RegPackBounds(Buf, 1, lbound(InData%WaveKinGridyi, kind=B8Ki), ubound(InData%WaveKinGridyi, kind=B8Ki))
      call RegPack(Buf, InData%WaveKinGridyi)
   end if
   call RegPack(Buf, allocated(InData%WaveKinGridzi))
   if (allocated(InData%WaveKinGridzi)) then
      call RegPackBounds(Buf, 1, lbound(InData%WaveKinGridzi, kind=B8Ki), ubound(InData%WaveKinGridzi, kind=B8Ki))
      call RegPack(Buf, InData%WaveKinGridzi)
   end if
   call RegPack(Buf, allocated(InData%CurrVxi))
   if (allocated(InData%CurrVxi)) then
      call RegPackBounds(Buf, 1, lbound(InData%CurrVxi, kind=B8Ki), ubound(InData%CurrVxi, kind=B8Ki))
      call RegPack(Buf, InData%CurrVxi)
   end if
   call RegPack(Buf, allocated(InData%CurrVyi))
   if (allocated(InData%CurrVyi)) then
      call RegPackBounds(Buf, 1, lbound(InData%CurrVyi, kind=B8Ki), ubound(InData%CurrVyi, kind=B8Ki))
      call RegPack(Buf, InData%CurrVyi)
   end if
   call RegPack(Buf, InData%PCurrVxiPz0)
   call RegPack(Buf, InData%PCurrVyiPz0)
   call NWTC_Library_PackNWTC_RandomNumber_ParameterType(Buf, InData%RNG) 
   call RegPack(Buf, InData%ConstWaveMod)
   call RegPack(Buf, InData%CrestHmax)
   call RegPack(Buf, InData%CrestTime)
   call RegPack(Buf, InData%CrestXi)
   call RegPack(Buf, InData%CrestYi)
   call RegPack(Buf, InData%WaveFieldMod)
   call RegPack(Buf, InData%PtfmLocationX)
   call RegPack(Buf, InData%PtfmLocationY)
   if (RegCheckErr(Buf, RoutineName)) return
end subroutine

subroutine Waves_UnPackInitInput(Buf, OutData)
   type(PackBuffer), intent(inout)    :: Buf
   type(Waves_InitInputType), intent(inout) :: OutData
   character(*), parameter            :: RoutineName = 'Waves_UnPackInitInput'
   integer(B8Ki)   :: LB(1), UB(1)
   integer(IntKi)  :: stat
   logical         :: IsAllocAssoc
   if (Buf%ErrStat /= ErrID_None) return
   call RegUnpack(Buf, OutData%InputFile)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%DirRoot)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WvKinFile)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%Gravity)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%nGrid)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveNDir)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveDirSpread)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveDirRange)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveDT)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveHs)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveNDAmp)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WavePhase)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WavePkShp)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveTMax)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveTp)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%NWaveElevGrid)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%NWaveKinGrid)
   if (RegCheckErr(Buf, RoutineName)) return
   if (allocated(OutData%WaveKinGridxi)) deallocate(OutData%WaveKinGridxi)
   call RegUnpack(Buf, IsAllocAssoc)
   if (RegCheckErr(Buf, RoutineName)) return
   if (IsAllocAssoc) then
      call RegUnpackBounds(Buf, 1, LB, UB)
      if (RegCheckErr(Buf, RoutineName)) return
      allocate(OutData%WaveKinGridxi(LB(1):UB(1)),stat=stat)
      if (stat /= 0) then 
         call SetErrStat(ErrID_Fatal, 'Error allocating OutData%WaveKinGridxi.', Buf%ErrStat, Buf%ErrMsg, RoutineName)
         return
      end if
      call RegUnpack(Buf, OutData%WaveKinGridxi)
      if (RegCheckErr(Buf, RoutineName)) return
   end if
   if (allocated(OutData%WaveKinGridyi)) deallocate(OutData%WaveKinGridyi)
   call RegUnpack(Buf, IsAllocAssoc)
   if (RegCheckErr(Buf, RoutineName)) return
   if (IsAllocAssoc) then
      call RegUnpackBounds(Buf, 1, LB, UB)
      if (RegCheckErr(Buf, RoutineName)) return
      allocate(OutData%WaveKinGridyi(LB(1):UB(1)),stat=stat)
      if (stat /= 0) then 
         call SetErrStat(ErrID_Fatal, 'Error allocating OutData%WaveKinGridyi.', Buf%ErrStat, Buf%ErrMsg, RoutineName)
         return
      end if
      call RegUnpack(Buf, OutData%WaveKinGridyi)
      if (RegCheckErr(Buf, RoutineName)) return
   end if
   if (allocated(OutData%WaveKinGridzi)) deallocate(OutData%WaveKinGridzi)
   call RegUnpack(Buf, IsAllocAssoc)
   if (RegCheckErr(Buf, RoutineName)) return
   if (IsAllocAssoc) then
      call RegUnpackBounds(Buf, 1, LB, UB)
      if (RegCheckErr(Buf, RoutineName)) return
      allocate(OutData%WaveKinGridzi(LB(1):UB(1)),stat=stat)
      if (stat /= 0) then 
         call SetErrStat(ErrID_Fatal, 'Error allocating OutData%WaveKinGridzi.', Buf%ErrStat, Buf%ErrMsg, RoutineName)
         return
      end if
      call RegUnpack(Buf, OutData%WaveKinGridzi)
      if (RegCheckErr(Buf, RoutineName)) return
   end if
   if (allocated(OutData%CurrVxi)) deallocate(OutData%CurrVxi)
   call RegUnpack(Buf, IsAllocAssoc)
   if (RegCheckErr(Buf, RoutineName)) return
   if (IsAllocAssoc) then
      call RegUnpackBounds(Buf, 1, LB, UB)
      if (RegCheckErr(Buf, RoutineName)) return
      allocate(OutData%CurrVxi(LB(1):UB(1)),stat=stat)
      if (stat /= 0) then 
         call SetErrStat(ErrID_Fatal, 'Error allocating OutData%CurrVxi.', Buf%ErrStat, Buf%ErrMsg, RoutineName)
         return
      end if
      call RegUnpack(Buf, OutData%CurrVxi)
      if (RegCheckErr(Buf, RoutineName)) return
   end if
   if (allocated(OutData%CurrVyi)) deallocate(OutData%CurrVyi)
   call RegUnpack(Buf, IsAllocAssoc)
   if (RegCheckErr(Buf, RoutineName)) return
   if (IsAllocAssoc) then
      call RegUnpackBounds(Buf, 1, LB, UB)
      if (RegCheckErr(Buf, RoutineName)) return
      allocate(OutData%CurrVyi(LB(1):UB(1)),stat=stat)
      if (stat /= 0) then 
         call SetErrStat(ErrID_Fatal, 'Error allocating OutData%CurrVyi.', Buf%ErrStat, Buf%ErrMsg, RoutineName)
         return
      end if
      call RegUnpack(Buf, OutData%CurrVyi)
      if (RegCheckErr(Buf, RoutineName)) return
   end if
   call RegUnpack(Buf, OutData%PCurrVxiPz0)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%PCurrVyiPz0)
   if (RegCheckErr(Buf, RoutineName)) return
   call NWTC_Library_UnpackNWTC_RandomNumber_ParameterType(Buf, OutData%RNG) ! RNG 
   call RegUnpack(Buf, OutData%ConstWaveMod)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%CrestHmax)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%CrestTime)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%CrestXi)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%CrestYi)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveFieldMod)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%PtfmLocationX)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%PtfmLocationY)
   if (RegCheckErr(Buf, RoutineName)) return
end subroutine

subroutine Waves_CopyInitOutput(SrcInitOutputData, DstInitOutputData, CtrlCode, ErrStat, ErrMsg)
   type(Waves_InitOutputType), intent(in) :: SrcInitOutputData
   type(Waves_InitOutputType), intent(inout) :: DstInitOutputData
   integer(IntKi),  intent(in   ) :: CtrlCode
   integer(IntKi),  intent(  out) :: ErrStat
   character(*),    intent(  out) :: ErrMsg
   character(*), parameter        :: RoutineName = 'Waves_CopyInitOutput'
   ErrStat = ErrID_None
   ErrMsg  = ''
   DstInitOutputData%WaveNDir = SrcInitOutputData%WaveNDir
   DstInitOutputData%WaveTMax = SrcInitOutputData%WaveTMax
end subroutine

subroutine Waves_DestroyInitOutput(InitOutputData, ErrStat, ErrMsg)
   type(Waves_InitOutputType), intent(inout) :: InitOutputData
   integer(IntKi),  intent(  out) :: ErrStat
   character(*),    intent(  out) :: ErrMsg
   character(*), parameter        :: RoutineName = 'Waves_DestroyInitOutput'
   ErrStat = ErrID_None
   ErrMsg  = ''
end subroutine

subroutine Waves_PackInitOutput(Buf, Indata)
   type(PackBuffer), intent(inout) :: Buf
   type(Waves_InitOutputType), intent(in) :: InData
   character(*), parameter         :: RoutineName = 'Waves_PackInitOutput'
   if (Buf%ErrStat >= AbortErrLev) return
   call RegPack(Buf, InData%WaveNDir)
   call RegPack(Buf, InData%WaveTMax)
   if (RegCheckErr(Buf, RoutineName)) return
end subroutine

subroutine Waves_UnPackInitOutput(Buf, OutData)
   type(PackBuffer), intent(inout)    :: Buf
   type(Waves_InitOutputType), intent(inout) :: OutData
   character(*), parameter            :: RoutineName = 'Waves_UnPackInitOutput'
   if (Buf%ErrStat /= ErrID_None) return
   call RegUnpack(Buf, OutData%WaveNDir)
   if (RegCheckErr(Buf, RoutineName)) return
   call RegUnpack(Buf, OutData%WaveTMax)
   if (RegCheckErr(Buf, RoutineName)) return
end subroutine
END MODULE Waves_Types
!ENDOFREGISTRYGENERATEDFILE
