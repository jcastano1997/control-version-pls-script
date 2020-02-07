CREATE FUNCTION concat_text (TEXT, TEXT) RETURNS TEXT AS '
    BEGIN
        RETURN $1 || $2;
    END;
' LANGUAGE 'plpgsql';

--
-- Name: FN_SCHEMA1_EXAMPLE1(character varying, character varying[], character varying[], character varying[]); Type: FUNCTION; Schema: ADM; Owner: postgres
--

CREATE FUNCTION "SCHEMA1"."FN_SCHEMA1_EXAMPLE1"(integer) RETURNS integer AS $$

BEGIN
 RETURN $1;
END;
$$ LANGUAGE plpgsql;

ALTER FUNCTION "SCHEMA1"."FN_SCHEMA1_EXAMPLE1"(integer) OWNER TO postgres;