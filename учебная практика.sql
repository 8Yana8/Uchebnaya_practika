PGDMP      1                }            student    17.2    17.2 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    49154    student    DATABASE     {   CREATE DATABASE student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE student;
                     postgres    false            �            1259    49174    gruppa    TABLE     N   CREATE TABLE public.gruppa (
    id integer NOT NULL,
    name_gruppi text
);
    DROP TABLE public.gruppa;
       public         heap r       postgres    false            �            1259    49173    gruppa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gruppa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.gruppa_id_seq;
       public               postgres    false    222            �           0    0    gruppa_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.gruppa_id_seq OWNED BY public.gruppa.id;
          public               postgres    false    221            �            1259    49192    ikzamen    TABLE     �   CREATE TABLE public.ikzamen (
    id integer NOT NULL,
    predmet integer,
    gruppa integer,
    prepodavatel integer,
    predsedatel text
);
    DROP TABLE public.ikzamen;
       public         heap r       postgres    false            �            1259    49191    ikzamen_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ikzamen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ikzamen_id_seq;
       public               postgres    false    226            �           0    0    ikzamen_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ikzamen_id_seq OWNED BY public.ikzamen.id;
          public               postgres    false    225            �            1259    49156    kabinet    TABLE     �   CREATE TABLE public.kabinet (
    id integer NOT NULL,
    korpus integer,
    nomer_kabineta integer,
    itazh integer,
    prepodavatel integer,
    gruppa integer,
    nazvanie_kabineta text
);
    DROP TABLE public.kabinet;
       public         heap r       postgres    false            �            1259    49155    kabinet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kabinet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kabinet_id_seq;
       public               postgres    false    218            �           0    0    kabinet_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.kabinet_id_seq OWNED BY public.kabinet.id;
          public               postgres    false    217            �            1259    49183    predmet    TABLE     Q   CREATE TABLE public.predmet (
    id integer NOT NULL,
    name_predmeta text
);
    DROP TABLE public.predmet;
       public         heap r       postgres    false            �            1259    49182    predmet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.predmet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.predmet_id_seq;
       public               postgres    false    224            �           0    0    predmet_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.predmet_id_seq OWNED BY public.predmet.id;
          public               postgres    false    223            �            1259    49165    prepodavatel    TABLE     �   CREATE TABLE public.prepodavatel (
    id integer NOT NULL,
    name text,
    surname text,
    otchestvo text,
    zakreplenni_kabinet integer,
    gruppa integer,
    kafedra text,
    predmet integer
);
     DROP TABLE public.prepodavatel;
       public         heap r       postgres    false            �            1259    49164    prepodavatel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prepodavatel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.prepodavatel_id_seq;
       public               postgres    false    220            �           0    0    prepodavatel_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.prepodavatel_id_seq OWNED BY public.prepodavatel.id;
          public               postgres    false    219            7           2604    49177 	   gruppa id    DEFAULT     f   ALTER TABLE ONLY public.gruppa ALTER COLUMN id SET DEFAULT nextval('public.gruppa_id_seq'::regclass);
 8   ALTER TABLE public.gruppa ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            9           2604    49195 
   ikzamen id    DEFAULT     h   ALTER TABLE ONLY public.ikzamen ALTER COLUMN id SET DEFAULT nextval('public.ikzamen_id_seq'::regclass);
 9   ALTER TABLE public.ikzamen ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            5           2604    49159 
   kabinet id    DEFAULT     h   ALTER TABLE ONLY public.kabinet ALTER COLUMN id SET DEFAULT nextval('public.kabinet_id_seq'::regclass);
 9   ALTER TABLE public.kabinet ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            8           2604    49186 
   predmet id    DEFAULT     h   ALTER TABLE ONLY public.predmet ALTER COLUMN id SET DEFAULT nextval('public.predmet_id_seq'::regclass);
 9   ALTER TABLE public.predmet ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            6           2604    49168    prepodavatel id    DEFAULT     r   ALTER TABLE ONLY public.prepodavatel ALTER COLUMN id SET DEFAULT nextval('public.prepodavatel_id_seq'::regclass);
 >   ALTER TABLE public.prepodavatel ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �          0    49174    gruppa 
   TABLE DATA           1   COPY public.gruppa (id, name_gruppi) FROM stdin;
    public               postgres    false    222   �*       �          0    49192    ikzamen 
   TABLE DATA           Q   COPY public.ikzamen (id, predmet, gruppa, prepodavatel, predsedatel) FROM stdin;
    public               postgres    false    226   �*       �          0    49156    kabinet 
   TABLE DATA           m   COPY public.kabinet (id, korpus, nomer_kabineta, itazh, prepodavatel, gruppa, nazvanie_kabineta) FROM stdin;
    public               postgres    false    218   /+       �          0    49183    predmet 
   TABLE DATA           4   COPY public.predmet (id, name_predmeta) FROM stdin;
    public               postgres    false    224   �+       �          0    49165    prepodavatel 
   TABLE DATA           s   COPY public.prepodavatel (id, name, surname, otchestvo, zakreplenni_kabinet, gruppa, kafedra, predmet) FROM stdin;
    public               postgres    false    220   %,       �           0    0    gruppa_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.gruppa_id_seq', 3, true);
          public               postgres    false    221            �           0    0    ikzamen_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ikzamen_id_seq', 3, true);
          public               postgres    false    225            �           0    0    kabinet_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.kabinet_id_seq', 3, true);
          public               postgres    false    217            �           0    0    predmet_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.predmet_id_seq', 3, true);
          public               postgres    false    223            �           0    0    prepodavatel_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.prepodavatel_id_seq', 3, true);
          public               postgres    false    219            ?           2606    49181    gruppa gruppa_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.gruppa
    ADD CONSTRAINT gruppa_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.gruppa DROP CONSTRAINT gruppa_pkey;
       public                 postgres    false    222            C           2606    49199    ikzamen ikzamen_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ikzamen
    ADD CONSTRAINT ikzamen_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ikzamen DROP CONSTRAINT ikzamen_pkey;
       public                 postgres    false    226            ;           2606    49163    kabinet kabinet_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.kabinet
    ADD CONSTRAINT kabinet_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.kabinet DROP CONSTRAINT kabinet_pkey;
       public                 postgres    false    218            A           2606    49190    predmet predmet_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.predmet
    ADD CONSTRAINT predmet_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.predmet DROP CONSTRAINT predmet_pkey;
       public                 postgres    false    224            =           2606    49172    prepodavatel prepodavatel_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.prepodavatel
    ADD CONSTRAINT prepodavatel_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.prepodavatel DROP CONSTRAINT prepodavatel_pkey;
       public                 postgres    false    220            D           2606    49200 #   prepodavatel fk_gruppa_prepodavatel    FK CONSTRAINT     �   ALTER TABLE ONLY public.prepodavatel
    ADD CONSTRAINT fk_gruppa_prepodavatel FOREIGN KEY (gruppa) REFERENCES public.gruppa(id);
 M   ALTER TABLE ONLY public.prepodavatel DROP CONSTRAINT fk_gruppa_prepodavatel;
       public               postgres    false    220    4671    222            �   L   x�3��aáu:��Ck���xa�Mvsq>jXpa3P|-Pf5\ܘ�Bץ	���C�.M��(���� s{.�      �   =   x�3�4�G�.4^�pi������ˈ5,<���=%�psB ^E1z\\\ ��4|      �   �   x��N�	�P��Mq����<08U�))�pR���Y�t��@�A�]�Ɂڮ� �sk1�=8N[���xs=�f���XF�ȍu��B<�3�t[�����ݱ�J������L�*�V<�񇼪��-��      �   M   x�3��uh��M�&Z�/4^h9��ˈ�Q�N (~aX|3��2�8	���-�T������/�p��qqq y�.y      �   �   x���K
�@DםS�B��'�a�FWY����C�w��TrOb�K݉0�P���o�FZ$�km���6C�N��
)u;f�5+a$���c�;��|�(���IK$>�W�6f謋��ل��{�%�%�y�<��!Gʩ�Ń�q?�
cb{˰����X	"	?������ ~�G���ǝg^h�A�A8��O����D�      