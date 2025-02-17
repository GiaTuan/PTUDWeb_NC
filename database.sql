PGDMP     
    &                x            WebDB    12.0    12.0 $    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    123156    WebDB    DATABASE     �   CREATE DATABASE "WebDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "WebDB";
                postgres    false            �            1259    123159    Accounts    TABLE     �   CREATE TABLE public."Accounts" (
    id integer NOT NULL,
    username text,
    password text,
    email text,
    name text,
    phone text,
    isadmin boolean
);
    DROP TABLE public."Accounts";
       public         heap    postgres    false            �            1259    123157    Account_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Account_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Account_id_seq";
       public          postgres    false    203            0           0    0    Account_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."Account_id_seq" OWNED BY public."Accounts".id;
          public          postgres    false    202            �            1259    131382    Chats    TABLE     s   CREATE TABLE public."Chats" (
    id integer NOT NULL,
    iduser integer,
    idgame integer,
    content text
);
    DROP TABLE public."Chats";
       public         heap    postgres    false            �            1259    131380    Chats_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Chats_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Chats_id_seq";
       public          postgres    false    209            1           0    0    Chats_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Chats_id_seq" OWNED BY public."Chats".id;
          public          postgres    false    208            �            1259    131364 	   GameUsers    TABLE     e   CREATE TABLE public."GameUsers" (
    id integer NOT NULL,
    idgame integer,
    iduser integer
);
    DROP TABLE public."GameUsers";
       public         heap    postgres    false            �            1259    131362    GameUser_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GameUser_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."GameUser_id_seq";
       public          postgres    false    207            2           0    0    GameUser_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."GameUser_id_seq" OWNED BY public."GameUsers".id;
          public          postgres    false    206            �            1259    131348    Games    TABLE     I   CREATE TABLE public."Games" (
    id integer NOT NULL,
    state text
);
    DROP TABLE public."Games";
       public         heap    postgres    false            �            1259    131351    Games_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Games_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Games_id_seq";
       public          postgres    false    204            3           0    0    Games_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Games_id_seq" OWNED BY public."Games".id;
          public          postgres    false    205            �
           2604    123162    Accounts id    DEFAULT     m   ALTER TABLE ONLY public."Accounts" ALTER COLUMN id SET DEFAULT nextval('public."Account_id_seq"'::regclass);
 <   ALTER TABLE public."Accounts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    131385    Chats id    DEFAULT     h   ALTER TABLE ONLY public."Chats" ALTER COLUMN id SET DEFAULT nextval('public."Chats_id_seq"'::regclass);
 9   ALTER TABLE public."Chats" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    131367    GameUsers id    DEFAULT     o   ALTER TABLE ONLY public."GameUsers" ALTER COLUMN id SET DEFAULT nextval('public."GameUser_id_seq"'::regclass);
 =   ALTER TABLE public."GameUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    131353    Games id    DEFAULT     h   ALTER TABLE ONLY public."Games" ALTER COLUMN id SET DEFAULT nextval('public."Games_id_seq"'::regclass);
 9   ALTER TABLE public."Games" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            #          0    123159    Accounts 
   TABLE DATA           Y   COPY public."Accounts" (id, username, password, email, name, phone, isadmin) FROM stdin;
    public          postgres    false    203   3&       )          0    131382    Chats 
   TABLE DATA           >   COPY public."Chats" (id, iduser, idgame, content) FROM stdin;
    public          postgres    false    209   �&       '          0    131364 	   GameUsers 
   TABLE DATA           9   COPY public."GameUsers" (id, idgame, iduser) FROM stdin;
    public          postgres    false    207   E'       $          0    131348    Games 
   TABLE DATA           ,   COPY public."Games" (id, state) FROM stdin;
    public          postgres    false    204   �'       4           0    0    Account_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Account_id_seq"', 5, true);
          public          postgres    false    202            5           0    0    Chats_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Chats_id_seq"', 46, true);
          public          postgres    false    208            6           0    0    GameUser_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."GameUser_id_seq"', 53, true);
          public          postgres    false    206            7           0    0    Games_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Games_id_seq"', 7, true);
          public          postgres    false    205            �
           2606    123167    Accounts Account_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Accounts"
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY (id);
 C   ALTER TABLE ONLY public."Accounts" DROP CONSTRAINT "Account_pkey";
       public            postgres    false    203            �
           2606    131390    Chats Chats_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_pkey";
       public            postgres    false    209            �
           2606    131369    GameUsers GameUser_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."GameUsers"
    ADD CONSTRAINT "GameUser_pkey" PRIMARY KEY (id);
 E   ALTER TABLE ONLY public."GameUsers" DROP CONSTRAINT "GameUser_pkey";
       public            postgres    false    207            �
           2606    131361    Games Games_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Games"
    ADD CONSTRAINT "Games_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Games" DROP CONSTRAINT "Games_pkey";
       public            postgres    false    204            �
           2606    131396    Chats Chats_idgame_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_idgame_fkey" FOREIGN KEY (idgame) REFERENCES public."Games"(id);
 E   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_idgame_fkey";
       public          postgres    false    204    2715    209            �
           2606    131391    Chats Chats_iduser_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_iduser_fkey" FOREIGN KEY (iduser) REFERENCES public."Accounts"(id);
 E   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_iduser_fkey";
       public          postgres    false    2713    203    209            �
           2606    131370    GameUsers GameUser_idgame_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GameUsers"
    ADD CONSTRAINT "GameUser_idgame_fkey" FOREIGN KEY (idgame) REFERENCES public."Games"(id);
 L   ALTER TABLE ONLY public."GameUsers" DROP CONSTRAINT "GameUser_idgame_fkey";
       public          postgres    false    2715    204    207            �
           2606    131375    GameUsers GameUser_iduser_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GameUsers"
    ADD CONSTRAINT "GameUser_iduser_fkey" FOREIGN KEY (iduser) REFERENCES public."Accounts"(id);
 L   ALTER TABLE ONLY public."GameUsers" DROP CONSTRAINT "GameUser_iduser_fkey";
       public          postgres    false    207    203    2713            #   �   x��ͻ�0 @ѹ|sc_G��C�`�k" o��~nw:����@Ǳ�6��O�F��"lJf�ȋ�Se��c��o�S�<1�vf�l0 5���6;�I�x��GU�?p��1���9y���7}�I��2t�Mh�ꕞ�1
IGQɽ�=D��7�� h�PӴʤw�      )   @   x�3��4�4�,I-.�22��9����a��0�26 2L8�L̀"�����\1z\\\ �>�      '   �   x�%��C!�v1�Ox���_G�{��Y&��h��h�~G���gί��kM��F<W� �@hc@��+��a��(��(�-�=V�.�=&v����Jn]JA)aP*� �b�z�Q���t� ���q�?.�      $   !   x�3���2� �D��3a"b���� �V@     