PGDMP                      |            solatidb    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    solatidb    DATABASE     {   CREATE DATABASE solatidb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE solatidb;
                postgres    false            �            1259    24577    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    usuario character varying,
    password character varying,
    email character varying,
    direccion character varying,
    cedula bigint,
    edad smallint
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    24576    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    216            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    215            P           2604    24580    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    24577    usuarios 
   TABLE DATA           Y   COPY public.usuarios (id, usuario, password, email, direccion, cedula, edad) FROM stdin;
    public          postgres    false    216   E       �           0    0    usuarios_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.usuarios_id_seq', 100, true);
          public          postgres    false    215            R           2606    24586    usuarios unique_ced_email 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT unique_ced_email UNIQUE (cedula, email);
 C   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT unique_ced_email;
       public            postgres    false    216    216            T           2606    24584    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            �      x�]Y�r�<����P�d����~HHR��� c_ �����҃8�,i��.۔4�(�d���n˷��MZ���4�D�^/�,=������>M�Az$���J�L��,J4��q�t(#«12L�	�B8e��ͮ���Y��UXE�F��-�c��Zsu�B�;��g��y5N�j{E�p޼.ǟ��;OFdtr�t}���]&���>-�*�o�2G�ܚcU��q�`�e�k����}F8�9��ߏ4�|����=�ᗿ*H3M�H�_KڔZMU{k��"��l��uc5�t�l?O���*�>��"CU�i���(���٩���De�J�5�c��D8Tr��0Zd�3u�/zR�>��28�ݬA^���U��f:����]϶:I+���iSǡ���<'�*2c=�<��ϊyT�w�Q�u3���d���c��bik�U�^�Q2�s��vZ�b��kK����}��W<�����|�ךҵ��:���RI�&DJ�vj�$����CE:b��8=��x�ʿ6x��։Σ���N�s�z.�ކ+�c"|�:Jf�I�2U�ǻ���rd�&�&�cE��^U��/n�o�i|�c��Q��&.�oS�'���,Hɶu=�o��j���'U(��H��p�`�5�I���5��9q<A��z�h�9I���K���4��2ʢ�H�:s��6����I���:�x.��(��5�� 6k���1h~Wo;^�ِt�*�U}�(y,��x�2�e�c��}�t�_Th�� -�U��c���o^h�����{$�=� �}�U�O�p�c��3 Պ�햸�����A�K&i��,S�&�g�rZ�?��#_�G2�r��uOg�4mZ,�Q��w<���=����v�8���x؎|�����ISg�
��:Z-Ԕ>�ꣃ\k��TVͭ����M���z���QB�k&�&�h������Ǳ��$�<����w�H�:��Yt֨>e��HPl�����$D��%�N�i���PI\%�Vy<�
u�O���"��8��@\^׷}�v=F$�a�9�$K��^�������	�U�E��Hp��>Ku��7 �g�M3Pe6A=nėN��؞����۳o`�x�R��j���DY�Ce���J_&e�8�����y�l5��_�C�>�$��~��w�.�]�z?�=���
Ǒ�'�[�FGZ���ܮ��iGd��}�
�Q�4�?\�͸5S߸t)�o��� j��~�'$u���G�Ψ:� �;Z/T��7�(N܉s ~���9.�
�"�]c�Wr~.ׇ�y�!��eN0���Ò.�ۜ�ܶMUݪ��F��QƱ"�1�<���ƫM��!���)�cQܐ���	�֪��fō��I.�d�	2љ�1\5�<oz�<-7+�����(c�{��;�2�N��Z �Ԉ��{\
���h3�G�<�z�Q �ߛ��i��%}i��ߧ+��/�%�e���=F��q�Cϔ��?}�?>��Y>@kf�CC4"]��ܗ���s��s*�Z�@'��q���:<��(�I��u>���{�ܑy�ˇ^������O/�0х�� <�&]�#�Ƿ���l�f���
7���I'��z�C[ /�ۍ� ���H���n�S�RO�<X4��t���M:y��Y}�+x�0�~Q1�x�@_��<�M3�L�8�z(Rv�Ҕ�k�O?;+HfXo���U�1�����e�$]�Qxv�8�|GG.0[��Yyb��2^�`(T�q��;`��t�Ҷ�pif��c���2r�wP���}<>|Чy�����$G�ջ*�1��nM���f��?Y�&0��B���;]��5��e0^o��:������x���nf�5 f:��<������ɜ.�'�dr团h��U��aX�[Y�D��X%�8��ANpKx�q�3�@�5�>J"9Y�c#|~q�e6f|5W���I�2{0�5��D��1�����`���K���2w\M��$��V��=H�}�1�,��[^�ά�$
�m�nP�6�/�*���q�Ϛ�g�r�ՆF뭽:��_&D���.��q����5Ⱦ��d5�U�O4�Q��p�V@��.�p5�UW�
!�(����ky�-!����C� W9�ּpNS}����y��]�D,��p�hk5
��Z���#�p�s\�*kC��N��t��./�dЮ *�q���>���X�$���sH-�#',���v�����<?��Õ�"�4A��/����C8��1�,�gL6�@��"L�R{�>����HT�ǆl��*�*�˺�WZ���3�E��]z@�KE�����w�n�3�٣}�-���}����I�,�6:��:@�
̍8:�LM���oEA�_'@*� ��qA���֥ ��X5������@ƶ:TDB���wn���Xz/������
<��}kKi���FJK���um��HB��I+����xJ������V2��3�9�o � �ԍ�
xe�[�q���$�f�7�u�IW��w��c�I��պ�V�~t��X0�GH��.9��#�j��\#@g��������yn�_�<�]��>��q��{l��c�׸�%� �-Pl	M'֥0��"�|}��{��'q̾��+��r�}хgA���F�_a˙��&R�5ݓ�){HC��V����Hh�|�nk0R�B'���q���1��hx��	�A�]��]��u�����pJ���@�k�#�m��!GvF���B"}���tOeSt6�|jд����4�ˊ:���/�����о]s]$��dÿ�ߎ�~�F���&3v�[3�xآ��Cړ0KA�� fKC��};���*�֛�ޜ�tq���̲�z�`-`�oU^��#<����,�RQ��A��iW��������{G)�ڽw��ˠ�i&N��,�`T�B�P�&h ���������
����СqU��}��Rf�5��W�g���W7�Hh!
H��;OC�c��k�t6��:x��xJSr�5�<�l�p"XM�h�8�՞D�e�X.W�{Ff��7C��͍IMM	�F�'BM��F�`�?M���~ �қT�Js'E� ��EX����:kSl���-'
F�W�P��H}��~�tu�`�z*�S	y�xxT�D_ G�r4�JbQ���z��b��f�X��c*YGv�r��� `o�:6i�G\9�Y�qf5i��~����>�We�^q�#���x4<��D�����<�v()�q�xl��Yd�p弬E<=��6�7Y����>��F�7Տ'���n�qjB��(�q�&�d��x��W��m��| ��d�c���k�=4�?�� [8F|�5�Ϡ�f������h����v�/��l��}��p��V��?,.|�%�焜��n���=�\����BY���A��v��U"`�T�I�u!����3�Ӥ�
�R,{�I���/D��|}�)0�i�y�5�{�vtF&%x��Kj��g��M^�׳ݜ���&]��e�^Z�k��פ9њӎ��_%�Tǁ|υ܂D<j̞	�i�?Wi⼧��~��b�=%A�\뿝[3h0@!�!���c NW$�|j����.���l�|�<���v���M������� ���oF�*;��s��[���� e��^\̲����d��j�[�l����	J3r��+{j�#��w�%9e��||2�n�#���������3��>������ҟ��|;Y�m��ns���r�����Q8@�=c�o�����ܤ��0\-P���"yk��JO[���eB&Z�T�����G��C7&#�?��(�]N��q��	 ���j��G�Su���O�U��(�0�:ǣ.n�J����>�� ��Dj2P~"�%�j�iI�jSqq������n�ь�u=�,#�Ia���B�sw��z�����Q��	=C��;ʍ�BxoL^�mX���Rr��".v�9g�t`�	�k��]݃�IL����G$`Lt
�R�(���{�I�]V��5�� �  ��惓H����~���u�×N��'��.��p(���.U�x����r^���:�0�^��|���_"3�	���,E��A����p�V�$����Uo|��QI�9Jv��/s��57	=7�OHs�`5�Ϙ�� N��C%бEw���gè���f�0LёfBW�A�(��=Z�Q��"���s��F{9�����������æ���
�Uݎ+(�M�Bzuj>L�����y����ɫ*�����qDi����/���M�T�'bs�:V;���W�Ҿ�/Ω�����4�O�= Y��at�V�g`2�Y@!؀!���{?��rl���on�t����|vʃ�ݗ�	i �Ę��߼.�g¦/�\>��e�1���\�ع{_N�o�G[�=�=d�IÁ���#md����=��Sww�}�MU���������?��5oL=$p�5II�еw��{o����fC6I�P��דL]��τ}S�A�3q}����*k����髜4;������m�W��d���;���n�!P�5�څAs�Ț4����K�R��t����O�2~��>

��[/'s�?����� n�:��o��5�U8s��轁��Ѻ�C��G�
EfG	Ђ?��BpX4����v�%��X�����p�6d�&��5�����&� �@H���ⲚD�����'��_G��:���au�*P�]Y8B\#ύc�>��T	��n�Xp���"���2��p�{�9|��FcT��>=��>�Y@������?sj��%̯I���|π.��\9G���5�=�������l�+�B�T�mN;��������ǒ�f�Y}�[Y3霄&�=N����X$k^)3&ǯ� H�_77Jm>Y�tF�S�C^/vԁ|J7��>�#���4�g����`�z������Z����     