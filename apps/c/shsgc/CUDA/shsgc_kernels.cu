//
// auto-generated by ops.py//

//header
#define OPS_ACC_MD_MACROS
#include "ops_lib_cpp.h"
#include "ops_cuda_rt_support.h"
#include "ops_cuda_reduction.h"
#ifdef OPS_MPI
#include "ops_mpi_core.h"
#endif
// global constants
__constant__ int nxp;
__constant__ int nyp;
__constant__ int xhalo;
__constant__ int yhalo;
__constant__ double xmin;
__constant__ double ymin;
__constant__ double xmax;
__constant__ double ymax;
__constant__ double dx;
__constant__ double dy;
__constant__ double pl;
__constant__ double pr;
__constant__ double rhol;
__constant__ double rhor;
__constant__ double ul;
__constant__ double ur;
__constant__ double gam;
__constant__ double gam1;
__constant__ double eps;
__constant__ double lambda;
__constant__ double dt;
__constant__ double del2;
__constant__ double akap2;
__constant__ double tvdsmu;
__constant__ double con;

void ops_decl_const_char(int dim, char const *type,
int size, char *dat, char const *name){
  if (!strcmp(name,"nxp")) {
    cutilSafeCall(cudaMemcpyToSymbol(nxp, dat, dim*size));
  }
  else
  if (!strcmp(name,"nyp")) {
    cutilSafeCall(cudaMemcpyToSymbol(nyp, dat, dim*size));
  }
  else
  if (!strcmp(name,"xhalo")) {
    cutilSafeCall(cudaMemcpyToSymbol(xhalo, dat, dim*size));
  }
  else
  if (!strcmp(name,"yhalo")) {
    cutilSafeCall(cudaMemcpyToSymbol(yhalo, dat, dim*size));
  }
  else
  if (!strcmp(name,"xmin")) {
    cutilSafeCall(cudaMemcpyToSymbol(xmin, dat, dim*size));
  }
  else
  if (!strcmp(name,"ymin")) {
    cutilSafeCall(cudaMemcpyToSymbol(ymin, dat, dim*size));
  }
  else
  if (!strcmp(name,"xmax")) {
    cutilSafeCall(cudaMemcpyToSymbol(xmax, dat, dim*size));
  }
  else
  if (!strcmp(name,"ymax")) {
    cutilSafeCall(cudaMemcpyToSymbol(ymax, dat, dim*size));
  }
  else
  if (!strcmp(name,"dx")) {
    cutilSafeCall(cudaMemcpyToSymbol(dx, dat, dim*size));
  }
  else
  if (!strcmp(name,"dy")) {
    cutilSafeCall(cudaMemcpyToSymbol(dy, dat, dim*size));
  }
  else
  if (!strcmp(name,"pl")) {
    cutilSafeCall(cudaMemcpyToSymbol(pl, dat, dim*size));
  }
  else
  if (!strcmp(name,"pr")) {
    cutilSafeCall(cudaMemcpyToSymbol(pr, dat, dim*size));
  }
  else
  if (!strcmp(name,"rhol")) {
    cutilSafeCall(cudaMemcpyToSymbol(rhol, dat, dim*size));
  }
  else
  if (!strcmp(name,"rhor")) {
    cutilSafeCall(cudaMemcpyToSymbol(rhor, dat, dim*size));
  }
  else
  if (!strcmp(name,"ul")) {
    cutilSafeCall(cudaMemcpyToSymbol(ul, dat, dim*size));
  }
  else
  if (!strcmp(name,"ur")) {
    cutilSafeCall(cudaMemcpyToSymbol(ur, dat, dim*size));
  }
  else
  if (!strcmp(name,"gam")) {
    cutilSafeCall(cudaMemcpyToSymbol(gam, dat, dim*size));
  }
  else
  if (!strcmp(name,"gam1")) {
    cutilSafeCall(cudaMemcpyToSymbol(gam1, dat, dim*size));
  }
  else
  if (!strcmp(name,"eps")) {
    cutilSafeCall(cudaMemcpyToSymbol(eps, dat, dim*size));
  }
  else
  if (!strcmp(name,"lambda")) {
    cutilSafeCall(cudaMemcpyToSymbol(lambda, dat, dim*size));
  }
  else
  if (!strcmp(name,"dt")) {
    cutilSafeCall(cudaMemcpyToSymbol(dt, dat, dim*size));
  }
  else
  if (!strcmp(name,"del2")) {
    cutilSafeCall(cudaMemcpyToSymbol(del2, dat, dim*size));
  }
  else
  if (!strcmp(name,"akap2")) {
    cutilSafeCall(cudaMemcpyToSymbol(akap2, dat, dim*size));
  }
  else
  if (!strcmp(name,"tvdsmu")) {
    cutilSafeCall(cudaMemcpyToSymbol(tvdsmu, dat, dim*size));
  }
  else
  if (!strcmp(name,"con")) {
    cutilSafeCall(cudaMemcpyToSymbol(con, dat, dim*size));
  }
  else
  {
    printf("error: unknown const name\n"); exit(1);
  }
}


//user kernel files
#include "initialize_kernel_cuda_kernel.cu"
#include "save_kernel_cuda_kernel.cu"
#include "zerores_kernel_cuda_kernel.cu"
#include "drhoudx_kernel_cuda_kernel.cu"
#include "drhouupdx_kernel_cuda_kernel.cu"
#include "drhoEpudx_kernel_cuda_kernel.cu"
#include "updateRK3_kernel_cuda_kernel.cu"
#include "Riemann_kernel_cuda_kernel.cu"
#include "limiter_kernel_cuda_kernel.cu"
#include "tvd_kernel_cuda_kernel.cu"
#include "vars_kernel_cuda_kernel.cu"
#include "calupwindeff_kernel_cuda_kernel.cu"
#include "fact_kernel_cuda_kernel.cu"
#include "update_kernel_cuda_kernel.cu"
#include "test_kernel_cuda_kernel.cu"