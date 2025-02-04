# VHDL Counter with Overflow Handling

This repository demonstrates a common VHDL coding error: silent overflow in a counter.

The original `counter.vhdl` shows a simple counter that increments on each rising clock edge.  However, it lacks explicit overflow handling. When the counter reaches its maximum value (15), it silently wraps around to 0. This can lead to unexpected behavior in systems where detecting the maximum count is crucial.

The improved version, `counter_fixed.vhdl`, addresses this by adding an overflow flag and providing more robust behavior.