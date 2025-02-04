# Silent Integer Overflow in Ada Range Check

This repository demonstrates a subtle bug related to integer overflow in Ada.  The `Check_Range` function appears to correctly check if a value is within a specified range. However, due to the way Ada handles integer overflow, it can produce incorrect results when the input value is significantly larger than the maximum allowed value.

The example provided showcases this behavior. The first call to `Check_Range` works as expected. The second call, however, shows a flaw in the logic which leads to unexpected results when the input integer overflows.

The solution demonstrates how to mitigate this issue by using more robust range checking techniques.