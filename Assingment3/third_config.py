import m5
from m5.objects import *

class L1ICache(Cache):
    # Initialize L1 Instruction Cache
    def __init__(self, size='32kB', assoc=2):
        super(L1ICache, self).__init__()
        self.size = size
        self.assoc = assoc

class L1DCache(Cache):
    # Initialize L1 Data Cache
    def __init__(self, size='32kB', assoc=2):
        super(L1DCache, self).__init__()
        self.size = size
        self.assoc = assoc

class L2Cache(Cache):
    # Initialize L2 Cache
    def __init__(self, size='256kB', assoc=4):
        super(L2Cache, self).__init__()
        self.size = size
        self.assoc = assoc

system = System()
system.clk_domain = SrcClockDomain()
system.clk_domain.clock = "1GHz"
system.clk_domain.voltage_domain = VoltageDomain()
system.mem_mode = "timing"  # Use timing accesses
system.mem_ranges = [AddrRange("512MB")]  # Create an address range
system.cpu = X86TimingSimpleCPU()
system.membus = SystemXBar()
system.l1i_cache = L1ICache()
system.l1d_cache = L1DCache()
system.l2_cache = L2Cache()
system.cpu.icache_port = system.l1i_cache.cpu_side
system.cpu.dcache_port = system.l1d_cache.cpu_side
system.l1i_cache.mem_side = system.membus.cpu_side_ports
system.l1d_cache.mem_side = system.membus.cpu_side_ports
system.membus.mem_side_ports = system.l2_cache.cpu_side
system.l2_cache.mem_side = system.membus.cpu_side_ports
system.cpu.createInterruptController()
system.cpu.interrupts[0].pio = system.membus.mem_side_ports
system.cpu.interrupts[0].int_requestor = system.membus.cpu_side_ports
system.cpu.interrupts[0].int_responder = system.membus.mem_side_ports
system.mem_ctrl = MemCtrl()
system.mem_ctrl.dram = DDR3_1600_8x8()
system.mem_ctrl.dram.range = system.mem_ranges[0]
system.mem_ctrl.port = system.membus.mem_side_ports
system.system_port = system.membus.cpu_side_ports
# Load the binary for the "Hello World" application
binary = "gem5/tests/test-progs/hello/bin/x86/linux/hello"
system.workload = SEWorkload.init_compatible(binary)
# Create a process for a simple "Hello World" application
process = Process()
# Set the command (cmd is a list which begins with the executable, like argv)
process.cmd = [binary]
# Set the CPU to use the process as its workload and create thread contexts
system.cpu.workload = process
system.cpu.createThreads()
# Set up the root SimObject and start the simulation
root = Root(full_system=False, system=system)
# Instantiate all of the objects we've created above
m5.instantiate()
print("Beginning simulation!")
exit_event = m5.simulate()
print("Exiting @ tick %i because %s" % (m5.curTick(), exit_event.getCause()))