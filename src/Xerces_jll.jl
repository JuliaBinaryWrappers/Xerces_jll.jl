# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Xerces_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Xerces")
JLLWrappers.@generate_main_file("Xerces", UUID("637d83c4-b86a-5d90-b82d-5cf0573a8cfc"))
end  # module Xerces_jll
