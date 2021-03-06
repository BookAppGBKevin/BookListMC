PGDMP     &    *                v        	   books_app    10.4    10.4     �
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
           0    0    books_app_book_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.books_app_book_id_seq', 3, true);
            public       postgres    false    196            q
           2606    17613    books_app books_app_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.books_app
    ADD CONSTRAINT books_app_pkey PRIMARY KEY (book_id);
 B   ALTER TABLE ONLY public.books_app DROP CONSTRAINT books_app_pkey;
       public         postgres    false    197            �
   �  x��U�n�6}^��N�-�I��b}��qӺE[�@@I#�0E*$�������Kz�����<��R3g�e��^ze��}�>��{˳Ww��o�CZ�8�?:����g��Yc���^��}X��Ն��kǃ����6~�˓Ӭ��<zv}����N絍�����F����>�v>8מ<��擢�f'��|R�����3�mņI�(�{�*z�zC��Y���BpV~Q�s�j�������x���*�dU�)«�hػ>�4`pꌲI��\Q!H�@�f���u�*uA���y�8j�t��z����u!��w\Ht��˭�م�x���� �նިa�3F����Z�AF�c�o%��q��h����ە�Z�q}�>[����D�_��@��	�eo*��Z�\���)Lίԃ�j�i0�j�+] U*7Lz�1D�$�¼��s�1��֔�a��)yS�fI�D��}2�@�W���*��hhUE�R�[�C�7^��덎앸h.x4��z	�-�tУ��DΪ�#��k�������f�.���-�B�
��˭�ٵ�zӣ���f7*D�&|��,;8xqp���"�F������_��&,�
��o<K떽.�IAr���=q�cCE�簐l�2�P�ۀJ�.6� ;�yW��J�b��Y����`h��R�H��T���2���!.��E��3t���eJ��6�/����j�@���R��eA��e�Z���9 �G�z�Lv	QY�bP:���<�0���d�CB>:YK��,�uo�^�(�%
���s�'��F�l3����S�*a�C�<ùVa\�@�S��%���.wtQ�'bH@�Ie0u�1�~��[��$�O.�h�eK:;M� ��D���;�$��c�'pȨ���Խѹ`����G+Ys%{q�����7
Ӷq^�Z�f��t�:מS�@]����!�#1����\�/���=w���AT�`dl �LM�K��sp.��^��"$��A`�,*�Oeq�Q#�<��_px�aD����8�Q��q��#� OaW�ײ`F����.�4�9�ε���@8ޖf�� �mj�]�9][Y��뼇�@�����Ͽ�����5\4X"θz���1E#�+^N��6����N9�U5������+ ��B�D������q1�nΧ�}
fZ;�b4Д��?�[[[� �t!v     