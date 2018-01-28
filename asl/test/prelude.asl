// The minimum set of type definitions needed to parse the shared pseudocode

__builtin type bits;
__builtin type bit;
__builtin type integer;
__builtin type real;
__builtin type string;

enumeration boolean { FALSE, TRUE };
enumeration signal { LOW, HIGH };

type __RAM;

type CPACRType   = typeof(CPACR_EL1);
type CNTKCTLType = typeof(CNTKCTL_EL1);
type ESRType     = typeof(ESR_ELx);
type FPCRType    = typeof(FPCR);
type MAIRType    = typeof(MAIR_EL1);
type SCRType     = typeof(SCR);
type SCTLRType   = typeof(SCTLR_EL1);
