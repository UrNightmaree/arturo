#=======================================================
# Arturo
# Programming Language + Bytecode VM compiler
# (c) 2019-2022 Yanis Zafirópulos
#
# @file: vm/values/custom/vsocket.nim
#=======================================================

## The internal `:socket` type

when not defined(WEB):
    #=======================================
    # Libraries
    #=======================================

    import hashes, net

    #=======================================
    # Types
    #=======================================

    type 
        VSocket* = Socket

    #=======================================
    # Constants
    #=======================================

    #=======================================
    # Overloads
    #=======================================

    proc hash*(a: VSocket): Hash {.inline.} = 
        hash(a.getFD())


    func `$`*(b: VSocket): string  {.enforceNoRaises.} =
        ""

    #=======================================
    # Methods
    #=======================================