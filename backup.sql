--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.7

SET client_encoding = 'UTF8';

--
-- Name: SCHEMA1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "SCHEMA1";


ALTER SCHEMA "SCHEMA1" OWNER TO postgres;

--
-- Name: SCHEMA2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "SCHEMA2";


ALTER SCHEMA "SCHEMA2" OWNER TO postgres;

--
-- Name: SCHEMA3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "SCHEMA3";


ALTER SCHEMA "SCHEMA3" OWNER TO postgres;

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

--
-- Name: FN_SCHEMA1_EXAMPLE2(character varying, character varying[], character varying[], character varying[]); Type: FUNCTION; Schema: ADM; Owner: postgres
--

CREATE FUNCTION "SCHEMA1"."FN_SCHEMA1_EXAMPLE2"(integer) RETURNS integer AS $$

BEGIN
 RETURN $1;
END;
$$ LANGUAGE plpgsql;

ALTER FUNCTION "SCHEMA1"."FN_SCHEMA1_EXAMPLE2"(integer) OWNER TO postgres;

--
-- Name: FN_SCHEMA1_EXAMPLE3(character varying, character varying[], character varying[], character varying[]); Type: FUNCTION; Schema: ADM; Owner: postgres
--

CREATE FUNCTION "SCHEMA1"."FN_SCHEMA1_EXAMPLE3"(integer) RETURNS integer AS $$

BEGIN
 RETURN $1;
END;
$$ LANGUAGE plpgsql;

ALTER FUNCTION "SCHEMA1"."FN_SCHEMA1_EXAMPLE3"(integer) OWNER TO postgres;

--
-- Name: FN_SCHEMA2_EXAMPLE1(character varying, character varying[], character varying[], character varying[]); Type: FUNCTION; Schema: ADM; Owner: postgres
--

CREATE FUNCTION "SCHEMA2"."FN_SCHEMA2_EXAMPLE1"(integer) RETURNS integer AS $$

BEGIN
 RETURN $1;
END;
$$ LANGUAGE plpgsql;

ALTER FUNCTION "SCHEMA2"."FN_SCHEMA2_EXAMPLE1"(integer) OWNER TO postgres;

--
-- Name: FN_SCHEMA2_EXAMPLE2(character varying, character varying[], character varying[], character varying[]); Type: FUNCTION; Schema: ADM; Owner: postgres
--

CREATE FUNCTION "SCHEMA2"."FN_SCHEMA2_EXAMPLE2"(integer) RETURNS integer AS $$

BEGIN
 RETURN $1;
END;
$$ LANGUAGE plpgsql;

ALTER FUNCTION "SCHEMA2"."FN_SCHEMA2_EXAMPLE2"(integer) OWNER TO postgres;

--
-- Name: FN_SCHEMA3_EXAMPLE1(character varying, character varying[], character varying[], character varying[]); Type: FUNCTION; Schema: ADM; Owner: postgres
--

CREATE FUNCTION "SCHEMA3"."FN_SCHEMA3_EXAMPLE1"(integer) RETURNS integer AS $$

BEGIN
 RETURN $1;
END;
$$ LANGUAGE plpgsql;

ALTER FUNCTION "SCHEMA3"."FN_SCHEMA3_EXAMPLE1"(integer) OWNER TO postgres;
