#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

bool sref( SV *x )
{
    return  SvROK(x) && ( SvTYPE( SvRV(x) ) < SVt_PVAV );
}

bool aref( SV *x )
{
    return  SvROK(x) && ( SvTYPE( SvRV(x) ) == SVt_PVAV );
}


bool href( SV *x ) {
         return SvROK(x)
      && ( SvTYPE( SvRV(x) ) == SVt_PVHV )
      && ( !SvOBJECT( SvRV(x) ) );
}

MODULE = Scalar::RefType		PACKAGE = Scalar::RefType		


bool
sref(x)
    SV *x


bool
aref(x)
    SV *x

bool
href(x)
    SV *x
