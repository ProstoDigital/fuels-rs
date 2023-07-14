contract;

struct Nani {
    offset: u8,
    nani: Vec<u8>
}

abi MyContract {
    fn nested_vec() -> Nani;
}

impl MyContract for Contract {
    fn nested_vec() -> Nani{
        let mut nani = Vec::new();
        nani.push(32);
        nani.push(64);

        Nani{offset: 42, nani}
        }
}
