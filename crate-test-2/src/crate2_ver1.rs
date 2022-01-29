pub struct Crate2Ver1;

impl Crate2Ver1 {
    pub fn hello() -> String {
        "Hello version 1.0 in crate 2.".to_string()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn crate2_ver1_hello() {
        assert_eq!(
            Crate2Ver1::hello(),
            "Hello version 1.0 in crate 2.".to_string()
        );
    }
}
