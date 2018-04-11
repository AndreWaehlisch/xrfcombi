/*********************************************************
*
*   File erfprof.c
*
*   Calculates composition of 25 -layer sample
*   with erfc decreasing Ag2O molfraction
*   based on original calcprof.c woth exp decrease
*
*   input data from stdin : 
*   nr of compounds   value of exponent for decay of conc.
*   per compound  Compound Formula, Molwt, density and mol fraction
*   OF COMPOUNDS in  blank bulk glass
*   last item  should be the compound exchanged with Ag2O 
*   (in this case Na2O)
*  
*   M.Bos
*   march 30th 2001
*   revised from calcprof.c 
*   
*
***********************************************************/

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>

#define NRLAYERS 25
#define THICKNESS 2.50E-4   /* ANALYZING DEPTH in cm */

double erfcc(double x);

int main(void)
{
    int i, j, k, nr_compounds, retvalscanf ;
    double decay_exp;
    char cmpdnames[100] [100] ;  /* far too big, who cares? */
    double molwt[100], wtfraction[100], density[100], molfrac[100] ;
    double weight[100], weightf_layers[NRLAYERS][100] , mean_density[NRLAYERS] ;
    double moles_tot, molfag2o, massthickn[NRLAYERS];
    double voltot, mean_dens_bulk ,volcompound[100];
    double massthbulk ;
   
    retvalscanf= scanf("%d", &nr_compounds);
    if (retvalscanf==EOF)
    {
      printf("error in input, no nr of compounds found\n");
      exit(1);
    }

    retvalscanf= scanf("%lf", &decay_exp);
    if (retvalscanf==EOF)
    {
      printf("error in input, no nr of compounds found\n");
      exit(1);
    }
    /* now get data per compound */

    for (i=0; i < nr_compounds; i++)
    {
       
       retvalscanf=scanf("%s", cmpdnames[i]);
       if (retvalscanf==EOF)
       {
          printf("error in input file no compoundname found\n");
          exit(2);
       }
       retvalscanf=scanf("%lf", &(molwt[i]));
       if (retvalscanf==EOF)
       {
          printf("error in input file no molwt found\n");
          exit(2);
       }
       retvalscanf=scanf("%lf", &(density[i]));
       if (retvalscanf==EOF)
       {
          printf("error in input file no density found\n");
          exit(2);
       }
       retvalscanf=scanf("%lf", &wtfraction[i]);
       if (retvalscanf==EOF)
       {
          printf("error in input file no wtfraction found\n");
          exit(2);
       }
       /* debugging 
       printf("wtfraction[%d] %e ", i, wtfraction[i]); /* */
    }
     molwt[nr_compounds] = 231.736  ;  /* molwt Ag2O */
     strcpy(cmpdnames[nr_compounds],"Ag2O");
     density[nr_compounds]= 7.14 ;   /* density Ag2O */

   /* now start to setup outputfile */

   printf("%d\n",NRLAYERS);              /*  NRLAYERS layers */


    /* start to calculate mean density of bulk */ 
    /* we start to calc volume of 1 g of material */

    voltot = 0.0 ;  
    for (i=0; i < nr_compounds ; i++)
    { 
      voltot +=  wtfraction[i]/density[i];
    }

    /* density = weight / volume */

    mean_dens_bulk = 1.0 / voltot ;

    /* debug 
    printf("mean density is %g \n", mean_dens_bulk); /* */

    /* calculate massthickness of toplayer in bulk composition */

     massthbulk = THICKNESS * mean_dens_bulk ;

     /* debug 
    printf("massthickness bulk is %g \n", massthbulk); /* */



     /* now calculate moles of all compounds in analyzed depth at start  */

     moles_tot = 0.0;
     for (j=0; j < nr_compounds; j++)
     {
       moles_tot += (wtfraction[j]/molwt[j])*massthbulk  ;

       /* debugging 
       printf("moles tot %e wtfraction[%d] %e molwt[%d]  %e\n",
                 moles_tot, j, wtfraction[j],j,  molwt[j]); /* */ 
     }

     /* molfractions now */

     for (j=0; j < nr_compounds; j++)
     {
       molfrac[j]= (wtfraction[j]*massthbulk)/(molwt[j]*moles_tot);

       /* debugging 
       printf("molfrac[%d] is %e\n", j, molfrac[j]); /* */
     }


 
     molfag2o= molfrac[nr_compounds-1];
   /* produce data per layer */

   for (i=0; i < NRLAYERS ; i++)
   {
     printf("%d ", nr_compounds+1); /* now including Ag2O */

     /* first calculate Ag2O via exponential erfc decay */
     molfrac[nr_compounds]= molfag2o*
                         erfcc ((THICKNESS/(2.0*NRLAYERS) + 
                i*(THICKNESS/(NRLAYERS)))*decay_exp);
     molfrac[nr_compounds-1]=molfag2o-molfrac[nr_compounds];

     /* now calculate total weight of layer */
     weight[i] = 0.0;

     for (j=0; j <= nr_compounds  ; j++)
     {
        weight[i] += molfrac[j]* molwt[j]*moles_tot/NRLAYERS;
     }
     /* debugging 
     printf("weight[%d] is %e\n",i,weight[i]); /* */
     voltot = 0.0 ;
     /* now fill data weightfractions all layers */
     for (j=0; j <= nr_compounds; j++)
     {
       weightf_layers[i][j]=molfrac[j]*molwt[j]*moles_tot/(NRLAYERS*weight[i]);
       voltot += weightf_layers[i][j]/density[j];
     }
     mean_density[i]= 1.0 / voltot ;
     massthickn[i]=(THICKNESS/NRLAYERS)*mean_density[i] ; /* per slice THICKN */

     printf(" %e ", massthickn[i]);
     /* now print data */
     for (j=0; j <= nr_compounds; j++)
     {
       printf("%s %le ", cmpdnames[j], molfrac[j]*molwt[j]*moles_tot/
             (NRLAYERS*weight[i]));
     }
     printf("\n");
  }
  exit(0);
}


double erfcc(double x)
{
  double t,z,ans ;
  z=fabs(x);
  t=1.0/(1.0+0.5*z);
  ans=t*exp(-z*z-1.26551223+t*(1.00002368+t*(0.37409196 + t*(0.09678418+
      t*(-0.18628806 + t*(0.27886807 +t*(-1.13520398+t*(1.48851587+
      t*(-0.82215223+t*0.17087277)))))))));
  return x >= 0.0 ? ans : 2.0-ans ;
}

