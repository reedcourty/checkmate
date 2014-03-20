#ifndef ANY_MISSING_H_
#define ANY_MISSING_H_

#include "typedefs.h"

Rboolean any_missing_logical(SEXP);
Rboolean any_missing_integer(SEXP);
Rboolean any_missing_integerish(SEXP);
Rboolean any_missing_double(SEXP);
Rboolean any_missing_numeric(SEXP);
Rboolean any_missing_complex(SEXP);
Rboolean any_missing_string(SEXP);
Rboolean any_missing_atomic(SEXP);
Rboolean any_missing_list(SEXP);
Rboolean any_missing_matrix(SEXP);
Rboolean any_missing_frame(SEXP);
SEXP c_any_missing(SEXP);

#endif
