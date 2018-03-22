#include <idc.idc>

static main()
{
  SetShortPrm(INF_AF2, GetShortPrm(INF_AF2) | AF2_DODATA);
  Wait();
  auto file = GetIdbPath()[0:-4] + ".asm";
  GenerateFile(OFILE_LST, fopen(file,"wb"), 0, BADADDR, 0);
  Exit(0);  // exit to OS, error code 0 - success
}
