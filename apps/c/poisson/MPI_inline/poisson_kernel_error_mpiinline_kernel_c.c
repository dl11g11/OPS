//
// auto-generated by ops.py
//

int xdim0_poisson_kernel_error;
int xdim1_poisson_kernel_error;


//user function



void poisson_kernel_error_c_wrapper(
  double * restrict u_p,
  double * restrict ref_p,
  double * restrict err_g,
  int x_size, int y_size) {
  double err_0 = err_g[0];
  #pragma omp parallel for reduction(+:err_0)
  for ( int n_y=0; n_y<y_size; n_y++ ){
    for ( int n_x=0; n_x<x_size; n_x++ ){
      double err[1];
      err[0] = 0;
      const ptr_double u = { u_p + n_x*1 + n_y * xdim0_poisson_kernel_error*1, xdim0_poisson_kernel_error};
      const ptr_double ref = { ref_p + n_x*1 + n_y * xdim1_poisson_kernel_error*1, xdim1_poisson_kernel_error};
      
  *err = *err + (OPS_ACC(u, 0,0)-OPS_ACC(ref, 0,0))*(OPS_ACC(u, 0,0)-OPS_ACC(ref, 0,0));

      err_0 +=err[0];
    }
  }
  err_g[0] = err_0;
}