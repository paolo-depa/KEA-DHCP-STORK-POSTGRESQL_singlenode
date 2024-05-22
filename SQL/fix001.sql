-- Bug #3420 (https://gitlab.isc.org/isc-projects/kea/-/issues/3420):
-- when running createauditentrydhcp4 function having audits enabled the function fails, as far as the dhcp4_audit_revision table is empty

-- Workaround below:

DROP FUNCTION createauditentrydhcp4;
CREATE OR REPLACE FUNCTION public.createauditentrydhcp4(object_type_val character varying, object_id_val bigint, modification_type_val character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
DECLARE
    audit_revision_id BIGINT;
    disable_audit BOOLEAN := false;
BEGIN
    -- Fetch session value for disable_audit.
    disable_audit := get_session_boolean('kea.disable_audit');

    IF disable_audit IS NULL OR disable_audit = false THEN

        PERFORM createauditrevisiondhcp4(CURRENT_TIMESTAMP, 'all', 'created by createauditentrydhcp4', false);

        -- Fetch session value most recently created audit_revision_id.
        audit_revision_id := get_session_big_int('kea.audit_revision_id');

        INSERT INTO dhcp4_audit (object_type, object_id, modification_type, revision_id)
            VALUES (object_type_val, object_id_val,
                (SELECT id FROM modification WHERE modification_type = modification_type_val),
                 audit_revision_id);
    END IF;
    RETURN;
END;$function$
