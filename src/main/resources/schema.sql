DROP TABLE IF EXISTS public.message;

CREATE TABLE public.message
(
    id SERIAL PRIMARY KEY,
    data character varying(255) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.message OWNER to postgres;

INSERT INTO public.message (data) values ('Data 1');
INSERT INTO public.message (data) values ('Data 2');
INSERT INTO public.message (data) values ('Data 3');
INSERT INTO public.message (data) values ('Data 4');
INSERT INTO public.message (data) values ('Data 5');
INSERT INTO public.message (data) values ('Data 6');
INSERT INTO public.message (data) values ('Data 7');
INSERT INTO public.message (data) values ('Data 8');
INSERT INTO public.message (data) values ('Data 9');
INSERT INTO public.message (data) values ('Data 10');
COMMIT;