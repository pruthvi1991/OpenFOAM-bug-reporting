This case is crashing when I try to use the uniformFixedGradient in combination with tableFile. The intention is to simulate a time-varying heat flux entering the domain from one end. It is implemented as follows.

inlet
    {
        type            uniformFixedGradient;
        uniformGradient       tableFile;
        uniformGradientCoeffs // Notice that this was formerly tableFileCoeffs. Seems to have changed in the latest version
        {
            fileName           "/home/jujja/OpenFOAM/root-2.3.x/run/tutorials/basic/scalarTransportFoam/pitzDaily_noflow/0/data";    // name of data file
            outOfBounds         repeat;       // optional out-of-bounds handling
            interpolationScheme linear;      // optional interpolation method
        };
    }

This crashed and gives a stack trace.

Courant Number mean: 0 max: 0
Time = 0.0001

#  Foam::error::printStack(Foam::Ostream&) at ??:?
#  Foam::sigFpe::sigHandler(int) at ??:?
#  ? in "/lib/x86_64-linux-gnu/libc.so.6"
#  double Foam::sumProd<double>(Foam::UList<double> const&, Foam::UList<double> const&) at ??:?
#  Foam::PBiCG::solve(Foam::Field<double>&, Foam::Field<double> const&, unsigned char) const at ??:?
#  Foam::fvMatrix<double>::solveSegregated(Foam::dictionary const&) at ??:?
#  Foam::fvMatrix<double>::solve(Foam::dictionary const&) at ??:?
#  ? at ??:?
#  ? at ??:?
#  __libc_start_main in "/lib/x86_64-linux-gnu/libc.so.6"
#  ? at ??:?
./run.sh: line 4: 22378 Floating point exception(core dumped) scalarTransportFoam

However the same case runs fine when using uniformFixedValue instead of uniformFixedGradient. Here is ths implementation.

inlet
    {
        type            uniformFixedValue;
        uniformValue       tableFile;
        uniformValueCoeffs // Notice that this was formerly tableFileCoeffs. Seems to have changed in the latest version
        {
            fileName           "/home/jujja/OpenFOAM/root-2.3.x/run/tutorials/basic/scalarTransportFoam/pitzDaily_noflow/0/data";    // name of data file
            outOfBounds         repeat;       // optional out-of-bounds handling
            interpolationScheme linear;      // optional interpolation method
        };
    }
