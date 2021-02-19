# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SEAL_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SEAL")
JLLWrappers.@generate_main_file("SEAL", UUID("cdf55027-1209-57fc-8789-28745714751d"))
end  # module SEAL_jll
