fn foo(a: usize) void {
    struct {
        const a = 1;
    };
    _ = a;
}
fn bar(a: usize) void {
    struct {
        const b = struct {
            const a = 1;
        };
    };
    _ = a;
}

// error
// backend=stage2
// target=native
//
// :3:15: error: declaration 'a' shadows function parameter from outer scope
// :1:8: note: previous declaration here
// :10:19: error: declaration 'a' shadows function parameter from outer scope
// :7:8: note: previous declaration here
