# Static group
resource "panos_address_group" "example1" {
    name = "static ntp grp"
    description = "My NTP servers"
    static_addresses = [
        panos_address_object.ao1.name,
        panos_address_object.ao2.name,
    ]
}

resource "panos_address_object" "ao1" {
    name = "ntp1"
    value = "10.0.2.1"
}

resource "panos_address_object" "ao2" {
    name = "ntp2"
    value = "10.0.2.2"
}

resource "panos_address_object" "ao3" {
    name = "ntp3"
    value = "10.0.2.3"
}
