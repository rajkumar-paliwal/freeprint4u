PGDMP         '            	    x            freeprint4u2    13.0    13.0 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    49197    freeprint4u2    DATABASE     h   CREATE DATABASE freeprint4u2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE freeprint4u2;
                postgres    false            ?            1259    49198    address_address    TABLE     [  CREATE TABLE public.address_address (
    id integer NOT NULL,
    fullname text,
    phonenumber text,
    addressline1 text,
    addressline2 text,
    city text,
    pincode text,
    state_id integer,
    instructions text,
    lastmodifieddate timestamp with time zone NOT NULL,
    countryid character varying(100),
    userid_id integer
);
 #   DROP TABLE public.address_address;
       public         heap    postgres    false            ?            1259    49204    address_address_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.address_address_id_seq;
       public          postgres    false    200                       0    0    address_address_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address_address.id;
          public          postgres    false    201            ?            1259    49206    address_country    TABLE     r   CREATE TABLE public.address_country (
    id integer NOT NULL,
    countryname character varying(100) NOT NULL
);
 #   DROP TABLE public.address_country;
       public         heap    postgres    false            ?            1259    49209    address_country_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.address_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.address_country_id_seq;
       public          postgres    false    202                       0    0    address_country_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.address_country_id_seq OWNED BY public.address_country.id;
          public          postgres    false    203            ?            1259    49211    address_country_statename    TABLE     ?   CREATE TABLE public.address_country_statename (
    id integer NOT NULL,
    country_id integer NOT NULL,
    states_id integer NOT NULL
);
 -   DROP TABLE public.address_country_statename;
       public         heap    postgres    false            ?            1259    49214     address_country_statename_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.address_country_statename_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.address_country_statename_id_seq;
       public          postgres    false    204                       0    0     address_country_statename_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.address_country_statename_id_seq OWNED BY public.address_country_statename.id;
          public          postgres    false    205            ?            1259    49216    address_states    TABLE     j   CREATE TABLE public.address_states (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
 "   DROP TABLE public.address_states;
       public         heap    postgres    false            ?            1259    49219    address_states_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.address_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.address_states_id_seq;
       public          postgres    false    206                       0    0    address_states_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.address_states_id_seq OWNED BY public.address_states.id;
          public          postgres    false    207            ?            1259    49221 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    49224    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    208                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    209            ?            1259    49226    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    49229    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    210                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    211            ?            1259    49231    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    49234    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    212                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            ?            1259    49236 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    49242    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    49245    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    216            ?            1259    49247    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    214            	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    217            ?            1259    49249    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    49252 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    218            
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    219            ?            1259    49254    contactus_contactus    TABLE     ?   CREATE TABLE public.contactus_contactus (
    id integer NOT NULL,
    fullname text,
    email text,
    enquiryabout text,
    description text,
    lastmodifieddate timestamp with time zone NOT NULL
);
 '   DROP TABLE public.contactus_contactus;
       public         heap    postgres    false            ?            1259    49260    contactus_contactus_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contactus_contactus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.contactus_contactus_id_seq;
       public          postgres    false    220                       0    0    contactus_contactus_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.contactus_contactus_id_seq OWNED BY public.contactus_contactus.id;
          public          postgres    false    221            ?            1259    49262    delivery_delivery    TABLE     2  CREATE TABLE public.delivery_delivery (
    id integer NOT NULL,
    orderid_id integer,
    trackingid character varying(100),
    courierservice text,
    status character varying(100),
    statusdate timestamp with time zone,
    deliverydate timestamp with time zone NOT NULL,
    userid_id integer
);
 %   DROP TABLE public.delivery_delivery;
       public         heap    postgres    false            ?            1259    49268    delivery_delivery_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.delivery_delivery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.delivery_delivery_id_seq;
       public          postgres    false    222                       0    0    delivery_delivery_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.delivery_delivery_id_seq OWNED BY public.delivery_delivery.id;
          public          postgres    false    223            ?            1259    49270    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    49277    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    224                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            ?            1259    49279    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    49282    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    226                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    227            ?            1259    49284    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    49290    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    228                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    229            ?            1259    49292    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    49298    feedback_feedback    TABLE     ?   CREATE TABLE public.feedback_feedback (
    id integer NOT NULL,
    orderno character varying(100),
    rating text,
    feedback text,
    date timestamp with time zone NOT NULL
);
 %   DROP TABLE public.feedback_feedback;
       public         heap    postgres    false            ?            1259    49304    feedback_feedback_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.feedback_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.feedback_feedback_id_seq;
       public          postgres    false    231                       0    0    feedback_feedback_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.feedback_feedback_id_seq OWNED BY public.feedback_feedback.id;
          public          postgres    false    232            ?            1259    49306    marketing_emailtemplate    TABLE     L  CREATE TABLE public.marketing_emailtemplate (
    id integer NOT NULL,
    emailtemplateid character varying(100) NOT NULL,
    subject text NOT NULL,
    header text NOT NULL,
    body text NOT NULL,
    footer text NOT NULL,
    subscribe text NOT NULL,
    attachment text NOT NULL,
    date timestamp with time zone NOT NULL
);
 +   DROP TABLE public.marketing_emailtemplate;
       public         heap    postgres    false            ?            1259    49312    marketing_emailtemplate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.marketing_emailtemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.marketing_emailtemplate_id_seq;
       public          postgres    false    233                       0    0    marketing_emailtemplate_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.marketing_emailtemplate_id_seq OWNED BY public.marketing_emailtemplate.id;
          public          postgres    false    234            ?            1259    49314    marketing_userdata    TABLE     E  CREATE TABLE public.marketing_userdata (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    name text NOT NULL,
    phone text NOT NULL,
    targetarea text NOT NULL,
    targetage text NOT NULL,
    previousemaildate timestamp with time zone NOT NULL,
    emaildate timestamp with time zone NOT NULL
);
 &   DROP TABLE public.marketing_userdata;
       public         heap    postgres    false            ?            1259    49320    marketing_userdata_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.marketing_userdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.marketing_userdata_id_seq;
       public          postgres    false    235                       0    0    marketing_userdata_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.marketing_userdata_id_seq OWNED BY public.marketing_userdata.id;
          public          postgres    false    236            ?            1259    49322    orders_orders    TABLE     M  CREATE TABLE public.orders_orders (
    id integer NOT NULL,
    userid_id integer,
    addressid_id integer,
    productid_id integer,
    orderdate timestamp with time zone NOT NULL,
    invoice text NOT NULL,
    orderstatus text NOT NULL,
    instructions text NOT NULL,
    lastmodifieddate timestamp with time zone NOT NULL
);
 !   DROP TABLE public.orders_orders;
       public         heap    postgres    false            ?            1259    49328    orders_orders_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.orders_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.orders_orders_id_seq;
       public          postgres    false    237                       0    0    orders_orders_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.orders_orders_id_seq OWNED BY public.orders_orders.id;
          public          postgres    false    238            ?            1259    49330    products_discount    TABLE     ?   CREATE TABLE public.products_discount (
    id integer NOT NULL,
    percentage integer,
    name character varying(100),
    details character varying(100),
    discountlimit integer
);
 %   DROP TABLE public.products_discount;
       public         heap    postgres    false            ?            1259    49333    products_discount_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.products_discount_id_seq;
       public          postgres    false    239                       0    0    products_discount_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.products_discount_id_seq OWNED BY public.products_discount.id;
          public          postgres    false    240            ?            1259    49335    products_price    TABLE     ?   CREATE TABLE public.products_price (
    id integer NOT NULL,
    size character varying(100) NOT NULL,
    papertype character varying(100),
    unitprice double precision,
    type character varying(100) NOT NULL
);
 "   DROP TABLE public.products_price;
       public         heap    postgres    false            ?            1259    49338    products_price_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.products_price_id_seq;
       public          postgres    false    241                       0    0    products_price_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.products_price_id_seq OWNED BY public.products_price.id;
          public          postgres    false    242            ?            1259    49340    products_products    TABLE     ?   CREATE TABLE public.products_products (
    id integer NOT NULL,
    name character varying(100),
    details character varying(100),
    discountid_id integer,
    priceid_id integer
);
 %   DROP TABLE public.products_products;
       public         heap    postgres    false            ?            1259    49343    products_products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.products_products_id_seq;
       public          postgres    false    243                       0    0    products_products_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.products_products_id_seq OWNED BY public.products_products.id;
          public          postgres    false    244            ?            1259    49345    transactions_transactions    TABLE       CREATE TABLE public.transactions_transactions (
    id integer NOT NULL,
    orderid_id integer,
    paymentmethod text,
    gatewaytransactionid text,
    transactionstatus text,
    transactiondate text,
    lastmodifieddate timestamp with time zone NOT NULL
);
 -   DROP TABLE public.transactions_transactions;
       public         heap    postgres    false            ?            1259    49351     transactions_transactions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.transactions_transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.transactions_transactions_id_seq;
       public          postgres    false    245                       0    0     transactions_transactions_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.transactions_transactions_id_seq OWNED BY public.transactions_transactions.id;
          public          postgres    false    246            ?            1259    49353    users_users    TABLE     u   CREATE TABLE public.users_users (
    id integer NOT NULL,
    phone character varying(11),
    userid_id integer
);
    DROP TABLE public.users_users;
       public         heap    postgres    false            ?            1259    49356    users_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_users_id_seq;
       public          postgres    false    247                       0    0    users_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_users_id_seq OWNED BY public.users_users.id;
          public          postgres    false    248            ?           2604    49358    address_address id    DEFAULT     x   ALTER TABLE ONLY public.address_address ALTER COLUMN id SET DEFAULT nextval('public.address_address_id_seq'::regclass);
 A   ALTER TABLE public.address_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            ?           2604    49359    address_country id    DEFAULT     x   ALTER TABLE ONLY public.address_country ALTER COLUMN id SET DEFAULT nextval('public.address_country_id_seq'::regclass);
 A   ALTER TABLE public.address_country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            ?           2604    49360    address_country_statename id    DEFAULT     ?   ALTER TABLE ONLY public.address_country_statename ALTER COLUMN id SET DEFAULT nextval('public.address_country_statename_id_seq'::regclass);
 K   ALTER TABLE public.address_country_statename ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            ?           2604    49361    address_states id    DEFAULT     v   ALTER TABLE ONLY public.address_states ALTER COLUMN id SET DEFAULT nextval('public.address_states_id_seq'::regclass);
 @   ALTER TABLE public.address_states ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            ?           2604    49362    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            ?           2604    49363    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            ?           2604    49364    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            ?           2604    49365    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    214            ?           2604    49366    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            ?           2604    49367    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    49368    contactus_contactus id    DEFAULT     ?   ALTER TABLE ONLY public.contactus_contactus ALTER COLUMN id SET DEFAULT nextval('public.contactus_contactus_id_seq'::regclass);
 E   ALTER TABLE public.contactus_contactus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            ?           2604    49369    delivery_delivery id    DEFAULT     |   ALTER TABLE ONLY public.delivery_delivery ALTER COLUMN id SET DEFAULT nextval('public.delivery_delivery_id_seq'::regclass);
 C   ALTER TABLE public.delivery_delivery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            ?           2604    49370    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            ?           2604    49371    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            ?           2604    49372    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            ?           2604    49373    feedback_feedback id    DEFAULT     |   ALTER TABLE ONLY public.feedback_feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_feedback_id_seq'::regclass);
 C   ALTER TABLE public.feedback_feedback ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            ?           2604    49374    marketing_emailtemplate id    DEFAULT     ?   ALTER TABLE ONLY public.marketing_emailtemplate ALTER COLUMN id SET DEFAULT nextval('public.marketing_emailtemplate_id_seq'::regclass);
 I   ALTER TABLE public.marketing_emailtemplate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            ?           2604    49375    marketing_userdata id    DEFAULT     ~   ALTER TABLE ONLY public.marketing_userdata ALTER COLUMN id SET DEFAULT nextval('public.marketing_userdata_id_seq'::regclass);
 D   ALTER TABLE public.marketing_userdata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            ?           2604    49376    orders_orders id    DEFAULT     t   ALTER TABLE ONLY public.orders_orders ALTER COLUMN id SET DEFAULT nextval('public.orders_orders_id_seq'::regclass);
 ?   ALTER TABLE public.orders_orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            ?           2604    49377    products_discount id    DEFAULT     |   ALTER TABLE ONLY public.products_discount ALTER COLUMN id SET DEFAULT nextval('public.products_discount_id_seq'::regclass);
 C   ALTER TABLE public.products_discount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            ?           2604    49378    products_price id    DEFAULT     v   ALTER TABLE ONLY public.products_price ALTER COLUMN id SET DEFAULT nextval('public.products_price_id_seq'::regclass);
 @   ALTER TABLE public.products_price ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            ?           2604    49379    products_products id    DEFAULT     |   ALTER TABLE ONLY public.products_products ALTER COLUMN id SET DEFAULT nextval('public.products_products_id_seq'::regclass);
 C   ALTER TABLE public.products_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            ?           2604    49380    transactions_transactions id    DEFAULT     ?   ALTER TABLE ONLY public.transactions_transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_transactions_id_seq'::regclass);
 K   ALTER TABLE public.transactions_transactions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            ?           2604    49381    users_users id    DEFAULT     p   ALTER TABLE ONLY public.users_users ALTER COLUMN id SET DEFAULT nextval('public.users_users_id_seq'::regclass);
 =   ALTER TABLE public.users_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            ?          0    49198    address_address 
   TABLE DATA           ?   COPY public.address_address (id, fullname, phonenumber, addressline1, addressline2, city, pincode, state_id, instructions, lastmodifieddate, countryid, userid_id) FROM stdin;
    public          postgres    false    200   (2      ?          0    49206    address_country 
   TABLE DATA           :   COPY public.address_country (id, countryname) FROM stdin;
    public          postgres    false    202   53      ?          0    49211    address_country_statename 
   TABLE DATA           N   COPY public.address_country_statename (id, country_id, states_id) FROM stdin;
    public          postgres    false    204   R3      ?          0    49216    address_states 
   TABLE DATA           2   COPY public.address_states (id, name) FROM stdin;
    public          postgres    false    206   o3      ?          0    49221 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    208   ?3      ?          0    49226    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    210   ?3      ?          0    49231    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    212   ?3      ?          0    49236 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    214   ?6      ?          0    49242    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ?7      ?          0    49249    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    218   8      ?          0    49254    contactus_contactus 
   TABLE DATA           o   COPY public.contactus_contactus (id, fullname, email, enquiryabout, description, lastmodifieddate) FROM stdin;
    public          postgres    false    220   $8      ?          0    49262    delivery_delivery 
   TABLE DATA           ?   COPY public.delivery_delivery (id, orderid_id, trackingid, courierservice, status, statusdate, deliverydate, userid_id) FROM stdin;
    public          postgres    false    222   A8      ?          0    49270    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    224   =9      ?          0    49279    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    226   Z9      ?          0    49284    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    228   >:      ?          0    49292    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    230   ?=      ?          0    49298    feedback_feedback 
   TABLE DATA           P   COPY public.feedback_feedback (id, orderno, rating, feedback, date) FROM stdin;
    public          postgres    false    231   ?>      ?          0    49306    marketing_emailtemplate 
   TABLE DATA           ?   COPY public.marketing_emailtemplate (id, emailtemplateid, subject, header, body, footer, subscribe, attachment, date) FROM stdin;
    public          postgres    false    233   ?>      ?          0    49314    marketing_userdata 
   TABLE DATA           y   COPY public.marketing_userdata (id, email, name, phone, targetarea, targetage, previousemaildate, emaildate) FROM stdin;
    public          postgres    false    235   ?>      ?          0    49322    orders_orders 
   TABLE DATA           ?   COPY public.orders_orders (id, userid_id, addressid_id, productid_id, orderdate, invoice, orderstatus, instructions, lastmodifieddate) FROM stdin;
    public          postgres    false    237   ?      ?          0    49330    products_discount 
   TABLE DATA           Y   COPY public.products_discount (id, percentage, name, details, discountlimit) FROM stdin;
    public          postgres    false    239   ??      ?          0    49335    products_price 
   TABLE DATA           N   COPY public.products_price (id, size, papertype, unitprice, type) FROM stdin;
    public          postgres    false    241   ??      ?          0    49340    products_products 
   TABLE DATA           Y   COPY public.products_products (id, name, details, discountid_id, priceid_id) FROM stdin;
    public          postgres    false    243   ??      ?          0    49345    transactions_transactions 
   TABLE DATA           ?   COPY public.transactions_transactions (id, orderid_id, paymentmethod, gatewaytransactionid, transactionstatus, transactiondate, lastmodifieddate) FROM stdin;
    public          postgres    false    245   @      ?          0    49353    users_users 
   TABLE DATA           ;   COPY public.users_users (id, phone, userid_id) FROM stdin;
    public          postgres    false    247   *@                 0    0    address_address_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_address_id_seq', 12, true);
          public          postgres    false    201                       0    0    address_country_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_country_id_seq', 1, false);
          public          postgres    false    203                       0    0     address_country_statename_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.address_country_statename_id_seq', 1, false);
          public          postgres    false    205                       0    0    address_states_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.address_states_id_seq', 1, false);
          public          postgres    false    207                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    209                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    211                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    213                        0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    216            !           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    217            "           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    219            #           0    0    contactus_contactus_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.contactus_contactus_id_seq', 1, false);
          public          postgres    false    221            $           0    0    delivery_delivery_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.delivery_delivery_id_seq', 11, true);
          public          postgres    false    223            %           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    225            &           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    227            '           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);
          public          postgres    false    229            (           0    0    feedback_feedback_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.feedback_feedback_id_seq', 1, false);
          public          postgres    false    232            )           0    0    marketing_emailtemplate_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.marketing_emailtemplate_id_seq', 1, false);
          public          postgres    false    234            *           0    0    marketing_userdata_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.marketing_userdata_id_seq', 1, false);
          public          postgres    false    236            +           0    0    orders_orders_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_orders_id_seq', 6, true);
          public          postgres    false    238            ,           0    0    products_discount_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.products_discount_id_seq', 1, false);
          public          postgres    false    240            -           0    0    products_price_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.products_price_id_seq', 1, false);
          public          postgres    false    242            .           0    0    products_products_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.products_products_id_seq', 1, false);
          public          postgres    false    244            /           0    0     transactions_transactions_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.transactions_transactions_id_seq', 1, false);
          public          postgres    false    246            0           0    0    users_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.users_users_id_seq', 1, false);
          public          postgres    false    248            ?           2606    49383 $   address_address address_address_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.address_address
    ADD CONSTRAINT address_address_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.address_address DROP CONSTRAINT address_address_pkey;
       public            postgres    false    200            ?           2606    49385 $   address_country address_country_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.address_country
    ADD CONSTRAINT address_country_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.address_country DROP CONSTRAINT address_country_pkey;
       public            postgres    false    202            ?           2606    49387 V   address_country_statename address_country_statename_country_id_states_id_2e6ceefc_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.address_country_statename
    ADD CONSTRAINT address_country_statename_country_id_states_id_2e6ceefc_uniq UNIQUE (country_id, states_id);
 ?   ALTER TABLE ONLY public.address_country_statename DROP CONSTRAINT address_country_statename_country_id_states_id_2e6ceefc_uniq;
       public            postgres    false    204    204            ?           2606    49389 8   address_country_statename address_country_statename_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.address_country_statename
    ADD CONSTRAINT address_country_statename_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.address_country_statename DROP CONSTRAINT address_country_statename_pkey;
       public            postgres    false    204            ?           2606    49391 "   address_states address_states_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.address_states
    ADD CONSTRAINT address_states_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.address_states DROP CONSTRAINT address_states_pkey;
       public            postgres    false    206            ?           2606    49393    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    208            ?           2606    49395 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    210    210            ?           2606    49397 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    210            ?           2606    49399    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    208            ?           2606    49401 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    212    212            ?           2606    49403 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    212            ?           2606    49405 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            ?           2606    49407 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            ?           2606    49409    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    214                        2606    49411 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    218                       2606    49413 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    218    218            ?           2606    49415     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    214                       2606    49417 ,   contactus_contactus contactus_contactus_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.contactus_contactus
    ADD CONSTRAINT contactus_contactus_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.contactus_contactus DROP CONSTRAINT contactus_contactus_pkey;
       public            postgres    false    220                       2606    49419 (   delivery_delivery delivery_delivery_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.delivery_delivery
    ADD CONSTRAINT delivery_delivery_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.delivery_delivery DROP CONSTRAINT delivery_delivery_pkey;
       public            postgres    false    222                       2606    49421 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    224                       2606    49423 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    226    226                       2606    49425 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    226                       2606    49427 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    228                       2606    49429 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    230                       2606    49431 (   feedback_feedback feedback_feedback_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.feedback_feedback
    ADD CONSTRAINT feedback_feedback_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.feedback_feedback DROP CONSTRAINT feedback_feedback_pkey;
       public            postgres    false    231                       2606    49433 4   marketing_emailtemplate marketing_emailtemplate_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.marketing_emailtemplate
    ADD CONSTRAINT marketing_emailtemplate_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.marketing_emailtemplate DROP CONSTRAINT marketing_emailtemplate_pkey;
       public            postgres    false    233                       2606    49435 *   marketing_userdata marketing_userdata_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.marketing_userdata
    ADD CONSTRAINT marketing_userdata_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.marketing_userdata DROP CONSTRAINT marketing_userdata_pkey;
       public            postgres    false    235                        2606    49437     orders_orders orders_orders_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.orders_orders
    ADD CONSTRAINT orders_orders_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.orders_orders DROP CONSTRAINT orders_orders_pkey;
       public            postgres    false    237            $           2606    49439 (   products_discount products_discount_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.products_discount
    ADD CONSTRAINT products_discount_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.products_discount DROP CONSTRAINT products_discount_pkey;
       public            postgres    false    239            &           2606    49441 "   products_price products_price_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.products_price
    ADD CONSTRAINT products_price_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.products_price DROP CONSTRAINT products_price_pkey;
       public            postgres    false    241            )           2606    49443 (   products_products products_products_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.products_products
    ADD CONSTRAINT products_products_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.products_products DROP CONSTRAINT products_products_pkey;
       public            postgres    false    243            -           2606    49445 8   transactions_transactions transactions_transactions_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.transactions_transactions
    ADD CONSTRAINT transactions_transactions_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.transactions_transactions DROP CONSTRAINT transactions_transactions_pkey;
       public            postgres    false    245            /           2606    49447 %   users_users users_users_Userid_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.users_users
    ADD CONSTRAINT "users_users_Userid_id_key" UNIQUE (userid_id);
 Q   ALTER TABLE ONLY public.users_users DROP CONSTRAINT "users_users_Userid_id_key";
       public            postgres    false    247            1           2606    49449    users_users users_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users_users
    ADD CONSTRAINT users_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_users DROP CONSTRAINT users_users_pkey;
       public            postgres    false    247            ?           1259    49450 !   address_address_state_id_e38b6b46    INDEX     a   CREATE INDEX address_address_state_id_e38b6b46 ON public.address_address USING btree (state_id);
 5   DROP INDEX public.address_address_state_id_e38b6b46;
       public            postgres    false    200            ?           1259    49451 "   address_address_userid_id_083915d2    INDEX     c   CREATE INDEX address_address_userid_id_083915d2 ON public.address_address USING btree (userid_id);
 6   DROP INDEX public.address_address_userid_id_083915d2;
       public            postgres    false    200            ?           1259    49452 -   address_country_statename_country_id_e7d284c1    INDEX     y   CREATE INDEX address_country_statename_country_id_e7d284c1 ON public.address_country_statename USING btree (country_id);
 A   DROP INDEX public.address_country_statename_country_id_e7d284c1;
       public            postgres    false    204            ?           1259    49453 ,   address_country_statename_states_id_b3f71cbb    INDEX     w   CREATE INDEX address_country_statename_states_id_b3f71cbb ON public.address_country_statename USING btree (states_id);
 @   DROP INDEX public.address_country_statename_states_id_b3f71cbb;
       public            postgres    false    204            ?           1259    49454    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    208            ?           1259    49455 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    210            ?           1259    49456 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    210            ?           1259    49457 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    212            ?           1259    49458 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            ?           1259    49459 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            ?           1259    49460 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    218                       1259    49461 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    218            ?           1259    49462     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    214                       1259    49463 %   delivery_delivery_orderid_id_d2503fad    INDEX     i   CREATE INDEX delivery_delivery_orderid_id_d2503fad ON public.delivery_delivery USING btree (orderid_id);
 9   DROP INDEX public.delivery_delivery_orderid_id_d2503fad;
       public            postgres    false    222            	           1259    49464 $   delivery_delivery_userid_id_85e5d541    INDEX     g   CREATE INDEX delivery_delivery_userid_id_85e5d541 ON public.delivery_delivery USING btree (userid_id);
 8   DROP INDEX public.delivery_delivery_userid_id_85e5d541;
       public            postgres    false    222            
           1259    49465 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    224                       1259    49466 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    224                       1259    49467 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    230                       1259    49468 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    230                       1259    49469 #   orders_orders_addressid_id_7a1c0750    INDEX     e   CREATE INDEX orders_orders_addressid_id_7a1c0750 ON public.orders_orders USING btree (addressid_id);
 7   DROP INDEX public.orders_orders_addressid_id_7a1c0750;
       public            postgres    false    237            !           1259    49470 #   orders_orders_productid_id_5a6b0d4c    INDEX     e   CREATE INDEX orders_orders_productid_id_5a6b0d4c ON public.orders_orders USING btree (productid_id);
 7   DROP INDEX public.orders_orders_productid_id_5a6b0d4c;
       public            postgres    false    237            "           1259    49471     orders_orders_userid_id_c19ee208    INDEX     _   CREATE INDEX orders_orders_userid_id_c19ee208 ON public.orders_orders USING btree (userid_id);
 4   DROP INDEX public.orders_orders_userid_id_c19ee208;
       public            postgres    false    237            '           1259    49472 (   products_products_discountid_id_85782b9a    INDEX     o   CREATE INDEX products_products_discountid_id_85782b9a ON public.products_products USING btree (discountid_id);
 <   DROP INDEX public.products_products_discountid_id_85782b9a;
       public            postgres    false    243            *           1259    49473 %   products_products_priceid_id_15957311    INDEX     i   CREATE INDEX products_products_priceid_id_15957311 ON public.products_products USING btree (priceid_id);
 9   DROP INDEX public.products_products_priceid_id_15957311;
       public            postgres    false    243            +           1259    49474 -   transactions_transactions_orderid_id_2f5ebf6e    INDEX     y   CREATE INDEX transactions_transactions_orderid_id_2f5ebf6e ON public.transactions_transactions USING btree (orderid_id);
 A   DROP INDEX public.transactions_transactions_orderid_id_2f5ebf6e;
       public            postgres    false    245            2           2606    49475 F   address_address address_address_state_id_e38b6b46_fk_address_states_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address_address
    ADD CONSTRAINT address_address_state_id_e38b6b46_fk_address_states_id FOREIGN KEY (state_id) REFERENCES public.address_states(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.address_address DROP CONSTRAINT address_address_state_id_e38b6b46_fk_address_states_id;
       public          postgres    false    3042    200    206            3           2606    49480 B   address_address address_address_userid_id_083915d2_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address_address
    ADD CONSTRAINT address_address_userid_id_083915d2_fk_auth_user_id FOREIGN KEY (userid_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.address_address DROP CONSTRAINT address_address_userid_id_083915d2_fk_auth_user_id;
       public          postgres    false    200    3060    214            4           2606    49485 O   address_country_statename address_country_stat_country_id_e7d284c1_fk_address_c    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address_country_statename
    ADD CONSTRAINT address_country_stat_country_id_e7d284c1_fk_address_c FOREIGN KEY (country_id) REFERENCES public.address_country(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.address_country_statename DROP CONSTRAINT address_country_stat_country_id_e7d284c1_fk_address_c;
       public          postgres    false    204    3034    202            5           2606    49490 N   address_country_statename address_country_stat_states_id_b3f71cbb_fk_address_s    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address_country_statename
    ADD CONSTRAINT address_country_stat_states_id_b3f71cbb_fk_address_s FOREIGN KEY (states_id) REFERENCES public.address_states(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.address_country_statename DROP CONSTRAINT address_country_stat_states_id_b3f71cbb_fk_address_s;
       public          postgres    false    204    3042    206            6           2606    49495 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3058    212    210            7           2606    49500 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    208    3047    210            8           2606    49505 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    226    3089    212            9           2606    49510 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    208    215    3047            :           2606    49515 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3060    215    214            ;           2606    49520 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3058    212    218            <           2606    49525 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3060    218    214            =           2606    57344 K   delivery_delivery delivery_delivery_orderid_id_d2503fad_fk_orders_orders_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.delivery_delivery
    ADD CONSTRAINT delivery_delivery_orderid_id_d2503fad_fk_orders_orders_id FOREIGN KEY (orderid_id) REFERENCES public.orders_orders(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.delivery_delivery DROP CONSTRAINT delivery_delivery_orderid_id_d2503fad_fk_orders_orders_id;
       public          postgres    false    3104    222    237            >           2606    57349 F   delivery_delivery delivery_delivery_userid_id_85e5d541_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.delivery_delivery
    ADD CONSTRAINT delivery_delivery_userid_id_85e5d541_fk_auth_user_id FOREIGN KEY (userid_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.delivery_delivery DROP CONSTRAINT delivery_delivery_userid_id_85e5d541_fk_auth_user_id;
       public          postgres    false    3060    222    214            ?           2606    49540 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    224    3089    226            @           2606    49545 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    224    214    3060            A           2606    57364 G   orders_orders orders_orders_addressid_id_7a1c0750_fk_address_address_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders_orders
    ADD CONSTRAINT orders_orders_addressid_id_7a1c0750_fk_address_address_id FOREIGN KEY (addressid_id) REFERENCES public.address_address(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.orders_orders DROP CONSTRAINT orders_orders_addressid_id_7a1c0750_fk_address_address_id;
       public          postgres    false    200    237    3030            B           2606    57369 I   orders_orders orders_orders_productid_id_5a6b0d4c_fk_products_products_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders_orders
    ADD CONSTRAINT orders_orders_productid_id_5a6b0d4c_fk_products_products_id FOREIGN KEY (productid_id) REFERENCES public.products_products(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.orders_orders DROP CONSTRAINT orders_orders_productid_id_5a6b0d4c_fk_products_products_id;
       public          postgres    false    237    243    3113            C           2606    57374 >   orders_orders orders_orders_userid_id_c19ee208_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders_orders
    ADD CONSTRAINT orders_orders_userid_id_c19ee208_fk_auth_user_id FOREIGN KEY (userid_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.orders_orders DROP CONSTRAINT orders_orders_userid_id_c19ee208_fk_auth_user_id;
       public          postgres    false    237    3060    214            D           2606    57354 G   products_products products_products_discountid_id_85782b9a_fk_products_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_products
    ADD CONSTRAINT products_products_discountid_id_85782b9a_fk_products_ FOREIGN KEY (discountid_id) REFERENCES public.products_discount(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.products_products DROP CONSTRAINT products_products_discountid_id_85782b9a_fk_products_;
       public          postgres    false    243    3108    239            E           2606    57359 L   products_products products_products_priceid_id_15957311_fk_products_price_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_products
    ADD CONSTRAINT products_products_priceid_id_15957311_fk_products_price_id FOREIGN KEY (priceid_id) REFERENCES public.products_price(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.products_products DROP CONSTRAINT products_products_priceid_id_15957311_fk_products_price_id;
       public          postgres    false    3110    241    243            F           2606    57379 O   transactions_transactions transactions_transac_orderid_id_2f5ebf6e_fk_orders_or    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transactions_transactions
    ADD CONSTRAINT transactions_transac_orderid_id_2f5ebf6e_fk_orders_or FOREIGN KEY (orderid_id) REFERENCES public.orders_orders(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.transactions_transactions DROP CONSTRAINT transactions_transac_orderid_id_2f5ebf6e_fk_orders_or;
       public          postgres    false    3104    237    245            G           2606    57384 :   users_users users_users_userid_id_77e6bbd7_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_users
    ADD CONSTRAINT users_users_userid_id_77e6bbd7_fk_auth_user_id FOREIGN KEY (userid_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.users_users DROP CONSTRAINT users_users_userid_id_77e6bbd7_fk_auth_user_id;
       public          postgres    false    214    247    3060            ?   ?   x??Խj?0 ?Yz
???~-??.?J?,??????$??+???,???????N?>???c???09$?c2po??ҽ????-?֘?qσ#@t???;̷????>.???^?<??3jQ????fw??c)᩵-)+?d?@??mm˅?b?F	??襡??,???"ն???? #G?쾩M?G\fΤu߱?????q??N;???$???m;?j???6Bs?2iH`b??w??????׶?\???YTJ~
??_???      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?     x?e?Y??0???S?E?=ϽF?µ??h&lg??}???<0?>????}??q?O??z??c?r?%?g??? ӟ?~???%k ?x??qI???>???????]^e??گɱb;?ڰ?[?={?n???jp??A????????	r?D8???7????}?~ڥ???????|??ޏ??????'??Z??Ѿ
?|?ծ?$?c%{?hw ?,z-@??ؠ?
F.??.񟩭ׂ?ճP? SEPs??V?lS`rPղY?	 ??V~`??U-2?mi??H?|??@
C?d?ׁ??? ?E?\L??????????e}eN??,????"???? ?0i?t??S-\@`6}m?_Q$O@S?
$qv?Ma M /?c???_?&?KZ?}mƌ?H??f?h??1٨???*???1.??????.?ԇռ?3??O????y????????#?#??5????ct??Q??}cGcj?"izG?j?"9?ɐ9HI????|f???iAHW?L?E?2?ZFГ	??c?{??4x?O?^??i?'}?????i?'T#?<??to2???Ӝv?2? ?'?Rf???wg?W 8?i_:g?R?}z????iA?kG????cG?~4??G???i}?S?Ӏ?w???ә8S????L??{E?\&F?~^vXuߍl??T???\f?T?&?`fRu??p23%]?ؖ)|1????{??&2?ҙɟ?Ȩ?f?>p?W*??9???$m?V?`,'??HHE䠿?G҈???{?ar]      ?   ?   x???AK?@???W䐛d????&B5PԃR? [c?u?L ??7?z	އ??y?l]??$`??/7Զ#?|uh?k??gO?#???M????
F $?9?(C.??!%B?+L???C??eE?s %*"?1ʇt?[[K????]y?U=?????o??*?|1?u͝{yN?????i?S1]_6"#5?0S(N?3??  ?'?;?/?????1H??NHe?L?K????KqI??Ls??gw?cA???qi      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x??ұN?0???~???(?cǉ??XXn????x}Rn?&-R?ꯟ??2?O????i?^~????G??h?̨?汄ĩh~??)??X<?P!Uч?Hw?<3<UG
? ?=<
@?f?X*?r??@?ی?ɜs`S?f?Q *ǰ?B???ԅ;????Ul?b?W9????ā??b??ɣ??Xe?e???u???3??G?o#|.ߗ??ץs????9iΛ????????      ?      x?????? ? ?      ?   ?   x?MP?n?0;K3T?c?????Zf4?I?????I.I? m??`?#'?pվ???Q5???U%ׂ??Te?+????l)?G?7P?n}|oIAym?w??VuG???S?aY6?t?/????sH??'[L#???d<??#??_???!?!K`???t????G?t?N]'?m???2?????????P$??M!D?2?c?D?8???
??>݉z      ?   A  x???ێ?8???O??j?:??gY??7M ?Z?o?;??&BB?>W??W9X????O??y?C ??S;?uW? ?????"?@?̆??d??FE}?Ҩ?9???9???Q??4G?%?\?b???????Y??n??4B???]?? ?7=q???ӄ6կr???n???}8?????+??????C??C?d 1?t??L?????{	RJb?k??uM????c???p??L?kJW?Ԁ6Vx??t?
)??A? ??}iC??7?????9q0s???GݵM=?a???|}pG??????"?H??ſ??P/D?BSΎ3??ɵ	???=?b?W?IS? ?"?2(??$O?'_?w?????>i?)v?+????Jd???=?0?u??????$?+d#??9?ͻs??|???QBT?TY??n????mx??W	?l?E?7M?b?z4??u?,)??&???(??y(a?\	U?Q??¢?]????w?R?O\8Ĕ?Q??}?_???<?*1?R?!??'.?u????t?.TȊ???@???D??n???C?,??+?R(!??$?>4><?j'I?"?*?P??????	??H?3?????????$?UQu??Y????*sچ?2?-???b????o?*?V
ÍM??Q?5??ePa?FjH2qȚ?~????ZR?iU??v?J?lW???m?B*??Y,
n&???!W#?V7t????;?i???0F?[??????xCeOy0??/!??,?蛦?6?(1?i?'?ܬ???D?????f{??͐8ĩ?V&???SD|???'ޙd?*
??-??d;?????˷???H*?E      ?     x???n?@  г|E?f?[?@TdF?? ?e???|?}yy^_?#Q?;??????꧶???k잸???Ϙ^<o9??j-?:?5??ų/?la????? ӈ=??$??j(?=I?&+??{l??=#	P??=?#?ˑv????/9??I?T9"=f???S??????????/E???U?n????.<?#?a?8i???a??e?k?Fܤ?byh?<?:G!??b?\xċ?@p??\V^?5C ???02mn@?A?	T?w.I???\?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x??Ͻ?@???}
w??׳?ꌾ 	??x??h?%]??????N??سIf?v?v$?J??.c??}??o??C{?)Dw?TF??m:RV*?V}??sz?P???>??z?:ø?@8?e???".?}3@ۥ??F?TL??v??EN)??ѫ ???+?v      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     