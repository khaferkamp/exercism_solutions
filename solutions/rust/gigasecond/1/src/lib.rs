use time::PrimitiveDateTime as DateTime;
use time::ext::NumericalDuration;

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    // The NumericalDuration trait bringhs the second method to the primitive type
    start + 1_000_000_000.seconds()
}
