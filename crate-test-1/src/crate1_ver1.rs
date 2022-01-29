pub struct Crate1Ver1;

impl Crate1Ver1 {
    pub fn hello() -> String {
        "Hello version 1.0 in crate 1.".to_string()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn crate1_ver1_hello() {
        assert_eq!(
            Crate1Ver1::hello(),
            "Hello version 1.0 in crate 1.".to_string()
        );
    }
}
