PGDMP         8                v        	   books_app    10.4    10.4     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    17602 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17605 	   books_app    TABLE       CREATE TABLE public.books_app (
    book_id integer NOT NULL,
    author character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    isbn character varying(255) NOT NULL,
    image_url character varying(255),
    description text NOT NULL
);
    DROP TABLE public.books_app;
       public         postgres    false    6            �            1259    17603    books_app_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_app_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.books_app_book_id_seq;
       public       postgres    false    6    197            �
           0    0    books_app_book_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.books_app_book_id_seq OWNED BY public.books_app.book_id;
            public       postgres    false    196            o
           2604    17608    books_app book_id    DEFAULT     v   ALTER TABLE ONLY public.books_app ALTER COLUMN book_id SET DEFAULT nextval('public.books_app_book_id_seq'::regclass);
 @   ALTER TABLE public.books_app ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    17605 	   books_app 
   TABLE DATA               Y   COPY public.books_app (book_id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   �       �
           0    0    books_app_book_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.books_app_book_id_seq', 1, true);
            public       postgres    false    196            q
           2606    17613    books_app books_app_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.books_app
    ADD CONSTRAINT books_app_pkey PRIMARY KEY (book_id);
 B   ALTER TABLE ONLY public.books_app DROP CONSTRAINT books_app_pkey;
       public         postgres    false    197            �
      x�%OKo�0>��§�P��hcR5&�8L��쀄��m"�8��~��v�?/7�.w�W=�T<g���~�ql����_�m�h�����)����':�z$-֒�`.�%t�Ѩn���K�z�~����RD����*3�]S�MݪB5b's�U�$vc�bG��%B�B��<�@|�l�)4
����.zLA\Q��'�Ѱ���(
�'��Bj�#��o���)#�ء��I�\k�&����-�M��z�f��8��9�D11���͇�q׺<�eY�N�~     