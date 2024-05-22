-- Subnet example 0001: adding the subnet 172.16.3.0/24, enabling the pool 172.16.3.10 - 172.16.3.20
-- Kea refreshes its configs from the DB each "config-fetch-wait-time" seconds, 30 by default

INSERT INTO public.dhcp4_subnet VALUES (2, '172.16.3.0/24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NOW(), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO public.dhcp4_subnet_server VALUES (2, 1, NOW());

INSERT INTO public.dhcp4_pool VALUES (1, '172.16.3.10', '172.16.3.20', 2, NOW(), NULL, NULL, NULL);