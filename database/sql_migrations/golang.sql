PGDMP     
    3                {            golang    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17107    golang    DATABASE     h   CREATE DATABASE golang WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE golang;
                postgres    false            �            1259    17125    role_rights    TABLE     �  CREATE TABLE public.role_rights (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    route character varying,
    section character varying,
    path character varying,
    r_create integer DEFAULT 0,
    r_read integer DEFAULT 0,
    r_update integer DEFAULT 0,
    r_delete integer DEFAULT 0,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.role_rights;
       public         heap    postgres    false            �            1259    17124    role_rights_id_seq    SEQUENCE     �   ALTER TABLE public.role_rights ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.role_rights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    17117    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    17116    roles_id_seq    SEQUENCE     �   ALTER TABLE public.roles ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    17109    users    TABLE     j  CREATE TABLE public.users (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    name character varying,
    last_access time without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17108    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215                      0    17125    role_rights 
   TABLE DATA           �   COPY public.role_rights (id, role_id, route, section, path, r_create, r_read, r_update, r_delete, created_at, updated_at) FROM stdin;
    public          postgres    false    219   �                 0    17117    roles 
   TABLE DATA           M   COPY public.roles (id, name, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    217   �                 0    17109    users 
   TABLE DATA           t   COPY public.users (id, role_id, email, password, name, last_access, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    215                     0    0    role_rights_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.role_rights_id_seq', 2, true);
          public          postgres    false    218                       0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          postgres    false    216                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    214            �           2606    17135    role_rights role_rights_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.role_rights
    ADD CONSTRAINT role_rights_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.role_rights DROP CONSTRAINT role_rights_pkey;
       public            postgres    false    219            �           2606    17123    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    217            ~           2606    17115    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215               /   x�3�4�,-N-*���I��<C(��".#N#�J�
�Jc���� ��s         !   x�3�tL����� .#����"?F��� �D�         G   x�3�4�LL���sH�M���K�υ���#��,.)J,�/��#.#N#����"$} .s��d�1z\\\ ^I!)     