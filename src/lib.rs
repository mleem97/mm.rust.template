#![forbid(unsafe_code)]
#![warn(missing_docs)]

//! General-purpose Rust repository template foundation.

/// Returns the template's current semantic version.
pub const VERSION: &str = env!("CARGO_PKG_VERSION");

/// Returns a stable diagnostic string useful for smoke tests.
pub fn diagnostic() -> &'static str {
    "mm-rust-template"
}
