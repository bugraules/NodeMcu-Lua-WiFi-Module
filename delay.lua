tmr.delay()
--use this module to delay
--http://nodemcu.readthedocs.io/en/master/en/modules/tmr/
--For the asynchronous version, the minimum delay time should not be shorter than 50 μs and
--maximum delay time is 0x7fffff μs (~8.3 seconds). In this mode the function does not block the stack and 
--returns immediately before the output sequence is finalized. HW timer FRC1_SOURCE mode is used to change the states.
--As there is only a single hardware timer, there are restrictions on which modules can be used at the same time. 
--An error will be raised if the timer is already in use.
