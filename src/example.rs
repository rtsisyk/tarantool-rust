extern crate core;
include!("./module.rs");

#[no_mangle]
pub extern fn rustproc(fiber_id: u64) {
    for _ in 0..5 {
        println!("rust fiber {}: before sleep", fiber_id);
        unsafe {
            fiber_sleep(0.1);
        }
        println!("rust fiber {}: after sleep", fiber_id);
    }
}
