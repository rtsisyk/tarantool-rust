#!/usr/bin/env tarantool

local ffi = require('ffi')
local fiber = require('fiber')

-- Load compiled library
local rust = ffi.load('./target/debug/libtarantool_rust_module.so')
ffi.cdef('void rustproc(uint64_t fiber_id)');

--
-- Check that fiber_yield() doesn't kill Rust code
--

local function rustproc(ch)
    rust.rustproc(fiber.id()) -- Rust code that yields
    ch:put(true)
end
-- start fibers
local N = 5
local join = fiber.channel(N)
for i=1,N do fiber.create(rustproc, join) end
-- join fibers
for i=1,N do join:get() end

os.exit(0)
