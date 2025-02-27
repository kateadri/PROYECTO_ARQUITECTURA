PGDMP     %            	        {         	   doc_final    15.2    15.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    42207 	   doc_final    DATABASE     |   CREATE DATABASE doc_final WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE doc_final;
                postgres    false            �            1259    42208    atencion    TABLE     �   CREATE TABLE public.atencion (
    idatencion integer NOT NULL,
    fecha_atencion date NOT NULL,
    idestudiante integer NOT NULL,
    condicionatencion smallint DEFAULT 1 NOT NULL,
    accion_atencion character varying(500) NOT NULL
);
    DROP TABLE public.atencion;
       public         heap    postgres    false            �            1259    42214    atencion_idatencion_seq    SEQUENCE     �   CREATE SEQUENCE public.atencion_idatencion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.atencion_idatencion_seq;
       public          postgres    false    214                       0    0    atencion_idatencion_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.atencion_idatencion_seq OWNED BY public.atencion.idatencion;
          public          postgres    false    215            �            1259    42215    carrera    TABLE     �   CREATE TABLE public.carrera (
    idcarrera integer NOT NULL,
    nombrecarrera character varying(100) NOT NULL,
    condicioncarrera smallint DEFAULT 1 NOT NULL,
    iddepartamento integer NOT NULL
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            �            1259    42219    carrera_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.carrera_idcarrera_seq;
       public          postgres    false    216                       0    0    carrera_idcarrera_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.carrera_idcarrera_seq OWNED BY public.carrera.idcarrera;
          public          postgres    false    217            �            1259    42220    departamento    TABLE     �   CREATE TABLE public.departamento (
    iddepartamento integer NOT NULL,
    nombredepartamento character varying(100) NOT NULL,
    condiciondepartamento smallint DEFAULT 1 NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    42224    departamento_iddepartamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_iddepartamento_seq;
       public          postgres    false    218                       0    0    departamento_iddepartamento_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.departamento_iddepartamento_seq OWNED BY public.departamento.iddepartamento;
          public          postgres    false    219            �            1259    42225 
   derivacion    TABLE     h  CREATE TABLE public.derivacion (
    idderivacion integer NOT NULL,
    fechaderivacion date NOT NULL,
    remitentederivacion character varying(100) NOT NULL,
    destinatarioderivacion character varying(100) NOT NULL,
    idpersonal integer NOT NULL,
    tipoderivacion character varying(100) NOT NULL,
    condicionderivacion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.derivacion;
       public         heap    postgres    false            �            1259    42229    derivacion_idderivacion_seq    SEQUENCE     �   CREATE SEQUENCE public.derivacion_idderivacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.derivacion_idderivacion_seq;
       public          postgres    false    220                       0    0    derivacion_idderivacion_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.derivacion_idderivacion_seq OWNED BY public.derivacion.idderivacion;
          public          postgres    false    221            �            1259    42230 
   estudiante    TABLE     �  CREATE TABLE public.estudiante (
    idestudiante integer NOT NULL,
    nombreestudiante character varying(100) NOT NULL,
    correoestudiante character varying(100) NOT NULL,
    identificacionestudiante character varying(30) NOT NULL,
    telefonoestudiante character varying(30) NOT NULL,
    condicionestudiante smallint DEFAULT 1 NOT NULL,
    idcarrera integer NOT NULL,
    idtipoestudiante integer NOT NULL
);
    DROP TABLE public.estudiante;
       public         heap    postgres    false            �            1259    42234    estudiante_idestudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiante_idestudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.estudiante_idestudiante_seq;
       public          postgres    false    222                       0    0    estudiante_idestudiante_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.estudiante_idestudiante_seq OWNED BY public.estudiante.idestudiante;
          public          postgres    false    223            �            1259    42235    gestion    TABLE     �   CREATE TABLE public.gestion (
    idgestion integer NOT NULL,
    nombregestion character varying NOT NULL,
    condiciongestion smallint NOT NULL
);
    DROP TABLE public.gestion;
       public         heap    postgres    false            �            1259    42240 	   hoja_ruta    TABLE     �   CREATE TABLE public.hoja_ruta (
    idruta integer NOT NULL,
    fecharuta date,
    idderivacion integer,
    descripcionruta character varying(250),
    condicionruta smallint DEFAULT 1
);
    DROP TABLE public.hoja_ruta;
       public         heap    postgres    false            �            1259    42244    hoja_ruta_idruta_seq    SEQUENCE     �   CREATE SEQUENCE public.hoja_ruta_idruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.hoja_ruta_idruta_seq;
       public          postgres    false    225                       0    0    hoja_ruta_idruta_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.hoja_ruta_idruta_seq OWNED BY public.hoja_ruta.idruta;
          public          postgres    false    226            �            1259    42245    permiso    TABLE     s   CREATE TABLE public.permiso (
    idpermiso integer NOT NULL,
    permisonombre character varying(100) NOT NULL
);
    DROP TABLE public.permiso;
       public         heap    postgres    false            �            1259    42248    permiso_idpermiso_seq    SEQUENCE     �   CREATE SEQUENCE public.permiso_idpermiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.permiso_idpermiso_seq;
       public          postgres    false    227                       0    0    permiso_idpermiso_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.permiso_idpermiso_seq OWNED BY public.permiso.idpermiso;
          public          postgres    false    228            �            1259    42249    personal    TABLE     �  CREATE TABLE public.personal (
    idpersonal integer NOT NULL,
    personalnombre character varying(100) NOT NULL,
    iddepartamento integer NOT NULL,
    idrol integer NOT NULL,
    personalcelular character varying(30) NOT NULL,
    personaldireccion character varying(150) NOT NULL,
    personalemail character varying(100) NOT NULL,
    identificacionpersonal character varying(30)
);
    DROP TABLE public.personal;
       public         heap    postgres    false            �            1259    42252    personal_idpersonal_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_idpersonal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.personal_idpersonal_seq;
       public          postgres    false    229                       0    0    personal_idpersonal_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.personal_idpersonal_seq OWNED BY public.personal.idpersonal;
          public          postgres    false    230            �            1259    42253    puesto    TABLE     �   CREATE TABLE public.puesto (
    idpuesto integer NOT NULL,
    puestonombre character varying(100) NOT NULL,
    puestocondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.puesto;
       public         heap    postgres    false            �            1259    42257    puesto_idpuesto_seq    SEQUENCE     �   CREATE SEQUENCE public.puesto_idpuesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.puesto_idpuesto_seq;
       public          postgres    false    231                       0    0    puesto_idpuesto_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.puesto_idpuesto_seq OWNED BY public.puesto.idpuesto;
          public          postgres    false    232            �            1259    42258    registro_atencion    TABLE       CREATE TABLE public.registro_atencion (
    id_registroa integer NOT NULL,
    id_usuariop integer NOT NULL,
    idatencion integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 %   DROP TABLE public.registro_atencion;
       public         heap    postgres    false            �            1259    42261 "   registro_atencion_id_registroa_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_atencion_id_registroa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.registro_atencion_id_registroa_seq;
       public          postgres    false    233                       0    0 "   registro_atencion_id_registroa_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.registro_atencion_id_registroa_seq OWNED BY public.registro_atencion.id_registroa;
          public          postgres    false    234            �            1259    42262    registro_hoja_ruta    TABLE     �   CREATE TABLE public.registro_hoja_ruta (
    id_registroh integer NOT NULL,
    id_usuariop integer NOT NULL,
    idruta integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 &   DROP TABLE public.registro_hoja_ruta;
       public         heap    postgres    false            �            1259    42265 #   registro_hoja_ruta_id_registroh_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_hoja_ruta_id_registroh_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.registro_hoja_ruta_id_registroh_seq;
       public          postgres    false    235                       0    0 #   registro_hoja_ruta_id_registroh_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.registro_hoja_ruta_id_registroh_seq OWNED BY public.registro_hoja_ruta.id_registroh;
          public          postgres    false    236            �            1259    42266    registro_servicios    TABLE       CREATE TABLE public.registro_servicios (
    id_registros integer NOT NULL,
    id_usuariop integer NOT NULL,
    idservicio integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 &   DROP TABLE public.registro_servicios;
       public         heap    postgres    false            �            1259    42269 #   registro_servicios_id_registros_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_servicios_id_registros_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.registro_servicios_id_registros_seq;
       public          postgres    false    237                       0    0 #   registro_servicios_id_registros_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.registro_servicios_id_registros_seq OWNED BY public.registro_servicios.id_registros;
          public          postgres    false    238            �            1259    42270    registro_usuarios    TABLE       CREATE TABLE public.registro_usuarios (
    id_registrou integer NOT NULL,
    id_usuariop integer NOT NULL,
    idusuarioe integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 %   DROP TABLE public.registro_usuarios;
       public         heap    postgres    false            �            1259    42273 "   registro_usuarios_id_registrou_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_usuarios_id_registrou_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.registro_usuarios_id_registrou_seq;
       public          postgres    false    239                       0    0 "   registro_usuarios_id_registrou_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.registro_usuarios_id_registrou_seq OWNED BY public.registro_usuarios.id_registrou;
          public          postgres    false    240            �            1259    42274    registro_usuariosp    TABLE       CREATE TABLE public.registro_usuariosp (
    id_registroup integer NOT NULL,
    id_usuariop integer NOT NULL,
    id_usuariopr integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 &   DROP TABLE public.registro_usuariosp;
       public         heap    postgres    false            �            1259    42277 $   registro_usuariosp_id_registroup_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_usuariosp_id_registroup_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.registro_usuariosp_id_registroup_seq;
       public          postgres    false    241                       0    0 $   registro_usuariosp_id_registroup_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.registro_usuariosp_id_registroup_seq OWNED BY public.registro_usuariosp.id_registroup;
          public          postgres    false    242            �            1259    42278    reporte    TABLE     �   CREATE TABLE public.reporte (
    idreporte integer NOT NULL,
    fechareporte date NOT NULL,
    idpersonal integer NOT NULL,
    condcionreporte smallint NOT NULL
);
    DROP TABLE public.reporte;
       public         heap    postgres    false            �            1259    42281    rol    TABLE     �   CREATE TABLE public.rol (
    idrol integer NOT NULL,
    rolnombre character varying(100) NOT NULL,
    rolcondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    42285    rol_idrol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_idrol_seq;
       public          postgres    false    244                       0    0    rol_idrol_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_idrol_seq OWNED BY public.rol.idrol;
          public          postgres    false    245            �            1259    42286    rol_permiso    TABLE     �   CREATE TABLE public.rol_permiso (
    idrol_permiso integer NOT NULL,
    idrol integer NOT NULL,
    idpermiso integer NOT NULL
);
    DROP TABLE public.rol_permiso;
       public         heap    postgres    false            �            1259    42289    rol_permiso_idpermiso_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_permiso_idpermiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.rol_permiso_idpermiso_seq;
       public          postgres    false    246                       0    0    rol_permiso_idpermiso_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.rol_permiso_idpermiso_seq OWNED BY public.rol_permiso.idpermiso;
          public          postgres    false    247            �            1259    42290    rol_permiso_idrol_permiso_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_permiso_idrol_permiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.rol_permiso_idrol_permiso_seq;
       public          postgres    false    246                        0    0    rol_permiso_idrol_permiso_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.rol_permiso_idrol_permiso_seq OWNED BY public.rol_permiso.idrol_permiso;
          public          postgres    false    248            �            1259    42291    rol_permiso_idrol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_permiso_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rol_permiso_idrol_seq;
       public          postgres    false    246            !           0    0    rol_permiso_idrol_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rol_permiso_idrol_seq OWNED BY public.rol_permiso.idrol;
          public          postgres    false    249            �            1259    42292    servicio    TABLE     �   CREATE TABLE public.servicio (
    idservicio integer NOT NULL,
    nombreservicio character varying(100) NOT NULL,
    condicionservicio smallint DEFAULT '1'::smallint NOT NULL
);
    DROP TABLE public.servicio;
       public         heap    postgres    false            �            1259    42296    servicio_idservicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_idservicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.servicio_idservicio_seq;
       public          postgres    false    250            "           0    0    servicio_idservicio_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.servicio_idservicio_seq OWNED BY public.servicio.idservicio;
          public          postgres    false    251            �            1259    42297    tipo_registrousuario    TABLE     �   CREATE TABLE public.tipo_registrousuario (
    idtipoaccion integer NOT NULL,
    tiponombre character varying(100) NOT NULL
);
 (   DROP TABLE public.tipo_registrousuario;
       public         heap    postgres    false            �            1259    42300 %   tipo_registrousuario_idtipoaccion_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_registrousuario_idtipoaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tipo_registrousuario_idtipoaccion_seq;
       public          postgres    false    252            #           0    0 %   tipo_registrousuario_idtipoaccion_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.tipo_registrousuario_idtipoaccion_seq OWNED BY public.tipo_registrousuario.idtipoaccion;
          public          postgres    false    253            �            1259    42301    tipoestudiante    TABLE     y   CREATE TABLE public.tipoestudiante (
    idtipoestudiante integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 "   DROP TABLE public.tipoestudiante;
       public         heap    postgres    false            �            1259    42304 #   tipoestudiante_idtipoestudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.tipoestudiante_idtipoestudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tipoestudiante_idtipoestudiante_seq;
       public          postgres    false    254            $           0    0 #   tipoestudiante_idtipoestudiante_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.tipoestudiante_idtipoestudiante_seq OWNED BY public.tipoestudiante.idtipoestudiante;
          public          postgres    false    255                        1259    42305    usuario    TABLE       CREATE TABLE public.usuario (
    idusuarioe integer NOT NULL,
    nombreusuarioe character varying(100) NOT NULL,
    "contraseñausuario" character varying(100) NOT NULL,
    usuariocondicion smallint DEFAULT 1 NOT NULL,
    idestudiante integer NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false                       1259    42309    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    256            %           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuarioe;
          public          postgres    false    257                       1259    42310    usuario_personal    TABLE       CREATE TABLE public.usuario_personal (
    id_usuariop integer NOT NULL,
    nombreusuariop character varying(100) NOT NULL,
    "contraseñausuario" character varying(100) NOT NULL,
    idpersonal integer NOT NULL,
    usuariocondicion smallint DEFAULT 1 NOT NULL
);
 $   DROP TABLE public.usuario_personal;
       public         heap    postgres    false                       1259    42314    usuario_personal_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_personal_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_personal_id_usuario_seq;
       public          postgres    false    258            &           0    0    usuario_personal_id_usuario_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.usuario_personal_id_usuario_seq OWNED BY public.usuario_personal.id_usuariop;
          public          postgres    false    259                       1259    42315    usuario_servicio    TABLE     �   CREATE TABLE public.usuario_servicio (
    idusuario_servicio integer NOT NULL,
    idservicio integer NOT NULL,
    idusuarioe integer NOT NULL
);
 $   DROP TABLE public.usuario_servicio;
       public         heap    postgres    false                       1259    42318    usuario_servicio_idservicio_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_servicio_idservicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_servicio_idservicio_seq;
       public          postgres    false    260            '           0    0    usuario_servicio_idservicio_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.usuario_servicio_idservicio_seq OWNED BY public.usuario_servicio.idservicio;
          public          postgres    false    261                       1259    42319 '   usuario_servicio_idusuario_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_servicio_idusuario_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.usuario_servicio_idusuario_servicio_seq;
       public          postgres    false    260            (           0    0 '   usuario_servicio_idusuario_servicio_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.usuario_servicio_idusuario_servicio_seq OWNED BY public.usuario_servicio.idusuario_servicio;
          public          postgres    false    262                       1259    42320    usuario_servicio_idusuarioe_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_servicio_idusuarioe_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_servicio_idusuarioe_seq;
       public          postgres    false    260            )           0    0    usuario_servicio_idusuarioe_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.usuario_servicio_idusuarioe_seq OWNED BY public.usuario_servicio.idusuarioe;
          public          postgres    false    263            �           2604    42321    atencion idatencion    DEFAULT     z   ALTER TABLE ONLY public.atencion ALTER COLUMN idatencion SET DEFAULT nextval('public.atencion_idatencion_seq'::regclass);
 B   ALTER TABLE public.atencion ALTER COLUMN idatencion DROP DEFAULT;
       public          postgres    false    215    214            �           2604    42322    carrera idcarrera    DEFAULT     v   ALTER TABLE ONLY public.carrera ALTER COLUMN idcarrera SET DEFAULT nextval('public.carrera_idcarrera_seq'::regclass);
 @   ALTER TABLE public.carrera ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    217    216            �           2604    42323    departamento iddepartamento    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN iddepartamento SET DEFAULT nextval('public.departamento_iddepartamento_seq'::regclass);
 J   ALTER TABLE public.departamento ALTER COLUMN iddepartamento DROP DEFAULT;
       public          postgres    false    219    218            �           2604    42324    derivacion idderivacion    DEFAULT     �   ALTER TABLE ONLY public.derivacion ALTER COLUMN idderivacion SET DEFAULT nextval('public.derivacion_idderivacion_seq'::regclass);
 F   ALTER TABLE public.derivacion ALTER COLUMN idderivacion DROP DEFAULT;
       public          postgres    false    221    220            �           2604    42325    estudiante idestudiante    DEFAULT     �   ALTER TABLE ONLY public.estudiante ALTER COLUMN idestudiante SET DEFAULT nextval('public.estudiante_idestudiante_seq'::regclass);
 F   ALTER TABLE public.estudiante ALTER COLUMN idestudiante DROP DEFAULT;
       public          postgres    false    223    222            �           2604    42326    hoja_ruta idruta    DEFAULT     t   ALTER TABLE ONLY public.hoja_ruta ALTER COLUMN idruta SET DEFAULT nextval('public.hoja_ruta_idruta_seq'::regclass);
 ?   ALTER TABLE public.hoja_ruta ALTER COLUMN idruta DROP DEFAULT;
       public          postgres    false    226    225            �           2604    42327    permiso idpermiso    DEFAULT     v   ALTER TABLE ONLY public.permiso ALTER COLUMN idpermiso SET DEFAULT nextval('public.permiso_idpermiso_seq'::regclass);
 @   ALTER TABLE public.permiso ALTER COLUMN idpermiso DROP DEFAULT;
       public          postgres    false    228    227            �           2604    42328    personal idpersonal    DEFAULT     z   ALTER TABLE ONLY public.personal ALTER COLUMN idpersonal SET DEFAULT nextval('public.personal_idpersonal_seq'::regclass);
 B   ALTER TABLE public.personal ALTER COLUMN idpersonal DROP DEFAULT;
       public          postgres    false    230    229            �           2604    42329    puesto idpuesto    DEFAULT     r   ALTER TABLE ONLY public.puesto ALTER COLUMN idpuesto SET DEFAULT nextval('public.puesto_idpuesto_seq'::regclass);
 >   ALTER TABLE public.puesto ALTER COLUMN idpuesto DROP DEFAULT;
       public          postgres    false    232    231            �           2604    42330    registro_atencion id_registroa    DEFAULT     �   ALTER TABLE ONLY public.registro_atencion ALTER COLUMN id_registroa SET DEFAULT nextval('public.registro_atencion_id_registroa_seq'::regclass);
 M   ALTER TABLE public.registro_atencion ALTER COLUMN id_registroa DROP DEFAULT;
       public          postgres    false    234    233            �           2604    42331    registro_hoja_ruta id_registroh    DEFAULT     �   ALTER TABLE ONLY public.registro_hoja_ruta ALTER COLUMN id_registroh SET DEFAULT nextval('public.registro_hoja_ruta_id_registroh_seq'::regclass);
 N   ALTER TABLE public.registro_hoja_ruta ALTER COLUMN id_registroh DROP DEFAULT;
       public          postgres    false    236    235            �           2604    42332    registro_servicios id_registros    DEFAULT     �   ALTER TABLE ONLY public.registro_servicios ALTER COLUMN id_registros SET DEFAULT nextval('public.registro_servicios_id_registros_seq'::regclass);
 N   ALTER TABLE public.registro_servicios ALTER COLUMN id_registros DROP DEFAULT;
       public          postgres    false    238    237            �           2604    42333    registro_usuarios id_registrou    DEFAULT     �   ALTER TABLE ONLY public.registro_usuarios ALTER COLUMN id_registrou SET DEFAULT nextval('public.registro_usuarios_id_registrou_seq'::regclass);
 M   ALTER TABLE public.registro_usuarios ALTER COLUMN id_registrou DROP DEFAULT;
       public          postgres    false    240    239            �           2604    42334     registro_usuariosp id_registroup    DEFAULT     �   ALTER TABLE ONLY public.registro_usuariosp ALTER COLUMN id_registroup SET DEFAULT nextval('public.registro_usuariosp_id_registroup_seq'::regclass);
 O   ALTER TABLE public.registro_usuariosp ALTER COLUMN id_registroup DROP DEFAULT;
       public          postgres    false    242    241            �           2604    42335 	   rol idrol    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN idrol SET DEFAULT nextval('public.rol_idrol_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN idrol DROP DEFAULT;
       public          postgres    false    245    244            �           2604    42336    rol_permiso idrol_permiso    DEFAULT     �   ALTER TABLE ONLY public.rol_permiso ALTER COLUMN idrol_permiso SET DEFAULT nextval('public.rol_permiso_idrol_permiso_seq'::regclass);
 H   ALTER TABLE public.rol_permiso ALTER COLUMN idrol_permiso DROP DEFAULT;
       public          postgres    false    248    246            �           2604    42337    rol_permiso idrol    DEFAULT     v   ALTER TABLE ONLY public.rol_permiso ALTER COLUMN idrol SET DEFAULT nextval('public.rol_permiso_idrol_seq'::regclass);
 @   ALTER TABLE public.rol_permiso ALTER COLUMN idrol DROP DEFAULT;
       public          postgres    false    249    246            �           2604    42338    rol_permiso idpermiso    DEFAULT     ~   ALTER TABLE ONLY public.rol_permiso ALTER COLUMN idpermiso SET DEFAULT nextval('public.rol_permiso_idpermiso_seq'::regclass);
 D   ALTER TABLE public.rol_permiso ALTER COLUMN idpermiso DROP DEFAULT;
       public          postgres    false    247    246            �           2604    42339    servicio idservicio    DEFAULT     z   ALTER TABLE ONLY public.servicio ALTER COLUMN idservicio SET DEFAULT nextval('public.servicio_idservicio_seq'::regclass);
 B   ALTER TABLE public.servicio ALTER COLUMN idservicio DROP DEFAULT;
       public          postgres    false    251    250            �           2604    42340 !   tipo_registrousuario idtipoaccion    DEFAULT     �   ALTER TABLE ONLY public.tipo_registrousuario ALTER COLUMN idtipoaccion SET DEFAULT nextval('public.tipo_registrousuario_idtipoaccion_seq'::regclass);
 P   ALTER TABLE public.tipo_registrousuario ALTER COLUMN idtipoaccion DROP DEFAULT;
       public          postgres    false    253    252            �           2604    42341    tipoestudiante idtipoestudiante    DEFAULT     �   ALTER TABLE ONLY public.tipoestudiante ALTER COLUMN idtipoestudiante SET DEFAULT nextval('public.tipoestudiante_idtipoestudiante_seq'::regclass);
 N   ALTER TABLE public.tipoestudiante ALTER COLUMN idtipoestudiante DROP DEFAULT;
       public          postgres    false    255    254            �           2604    42342    usuario idusuarioe    DEFAULT     w   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuarioe SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN idusuarioe DROP DEFAULT;
       public          postgres    false    257    256            �           2604    42343    usuario_personal id_usuariop    DEFAULT     �   ALTER TABLE ONLY public.usuario_personal ALTER COLUMN id_usuariop SET DEFAULT nextval('public.usuario_personal_id_usuario_seq'::regclass);
 K   ALTER TABLE public.usuario_personal ALTER COLUMN id_usuariop DROP DEFAULT;
       public          postgres    false    259    258            �           2604    42344 #   usuario_servicio idusuario_servicio    DEFAULT     �   ALTER TABLE ONLY public.usuario_servicio ALTER COLUMN idusuario_servicio SET DEFAULT nextval('public.usuario_servicio_idusuario_servicio_seq'::regclass);
 R   ALTER TABLE public.usuario_servicio ALTER COLUMN idusuario_servicio DROP DEFAULT;
       public          postgres    false    262    260            �           2604    42345    usuario_servicio idservicio    DEFAULT     �   ALTER TABLE ONLY public.usuario_servicio ALTER COLUMN idservicio SET DEFAULT nextval('public.usuario_servicio_idservicio_seq'::regclass);
 J   ALTER TABLE public.usuario_servicio ALTER COLUMN idservicio DROP DEFAULT;
       public          postgres    false    261    260            �           2604    42346    usuario_servicio idusuarioe    DEFAULT     �   ALTER TABLE ONLY public.usuario_servicio ALTER COLUMN idusuarioe SET DEFAULT nextval('public.usuario_servicio_idusuarioe_seq'::regclass);
 J   ALTER TABLE public.usuario_servicio ALTER COLUMN idusuarioe DROP DEFAULT;
       public          postgres    false    263    260            �          0    42208    atencion 
   TABLE DATA           p   COPY public.atencion (idatencion, fecha_atencion, idestudiante, condicionatencion, accion_atencion) FROM stdin;
    public          postgres    false    214   �      �          0    42215    carrera 
   TABLE DATA           ]   COPY public.carrera (idcarrera, nombrecarrera, condicioncarrera, iddepartamento) FROM stdin;
    public          postgres    false    216   
      �          0    42220    departamento 
   TABLE DATA           a   COPY public.departamento (iddepartamento, nombredepartamento, condiciondepartamento) FROM stdin;
    public          postgres    false    218   �      �          0    42225 
   derivacion 
   TABLE DATA           �   COPY public.derivacion (idderivacion, fechaderivacion, remitentederivacion, destinatarioderivacion, idpersonal, tipoderivacion, condicionderivacion) FROM stdin;
    public          postgres    false    220   a      �          0    42230 
   estudiante 
   TABLE DATA           �   COPY public.estudiante (idestudiante, nombreestudiante, correoestudiante, identificacionestudiante, telefonoestudiante, condicionestudiante, idcarrera, idtipoestudiante) FROM stdin;
    public          postgres    false    222   �      �          0    42235    gestion 
   TABLE DATA           M   COPY public.gestion (idgestion, nombregestion, condiciongestion) FROM stdin;
    public          postgres    false    224   2	      �          0    42240 	   hoja_ruta 
   TABLE DATA           d   COPY public.hoja_ruta (idruta, fecharuta, idderivacion, descripcionruta, condicionruta) FROM stdin;
    public          postgres    false    225   O	      �          0    42245    permiso 
   TABLE DATA           ;   COPY public.permiso (idpermiso, permisonombre) FROM stdin;
    public          postgres    false    227   �	      �          0    42249    personal 
   TABLE DATA           �   COPY public.personal (idpersonal, personalnombre, iddepartamento, idrol, personalcelular, personaldireccion, personalemail, identificacionpersonal) FROM stdin;
    public          postgres    false    229   I
      �          0    42253    puesto 
   TABLE DATA           I   COPY public.puesto (idpuesto, puestonombre, puestocondicion) FROM stdin;
    public          postgres    false    231   �
      �          0    42258    registro_atencion 
   TABLE DATA           y   COPY public.registro_atencion (id_registroa, id_usuariop, idatencion, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    233         �          0    42262    registro_hoja_ruta 
   TABLE DATA           v   COPY public.registro_hoja_ruta (id_registroh, id_usuariop, idruta, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    235   w      �          0    42266    registro_servicios 
   TABLE DATA           z   COPY public.registro_servicios (id_registros, id_usuariop, idservicio, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    237   �      �          0    42270    registro_usuarios 
   TABLE DATA           y   COPY public.registro_usuarios (id_registrou, id_usuariop, idusuarioe, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    239   W      �          0    42274    registro_usuariosp 
   TABLE DATA           }   COPY public.registro_usuariosp (id_registroup, id_usuariop, id_usuariopr, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    241   �      �          0    42278    reporte 
   TABLE DATA           W   COPY public.reporte (idreporte, fechareporte, idpersonal, condcionreporte) FROM stdin;
    public          postgres    false    243         �          0    42281    rol 
   TABLE DATA           =   COPY public.rol (idrol, rolnombre, rolcondicion) FROM stdin;
    public          postgres    false    244   "      �          0    42286    rol_permiso 
   TABLE DATA           F   COPY public.rol_permiso (idrol_permiso, idrol, idpermiso) FROM stdin;
    public          postgres    false    246   �      �          0    42292    servicio 
   TABLE DATA           Q   COPY public.servicio (idservicio, nombreservicio, condicionservicio) FROM stdin;
    public          postgres    false    250   �      �          0    42297    tipo_registrousuario 
   TABLE DATA           H   COPY public.tipo_registrousuario (idtipoaccion, tiponombre) FROM stdin;
    public          postgres    false    252                    0    42301    tipoestudiante 
   TABLE DATA           B   COPY public.tipoestudiante (idtipoestudiante, nombre) FROM stdin;
    public          postgres    false    254   N                0    42305    usuario 
   TABLE DATA           s   COPY public.usuario (idusuarioe, nombreusuarioe, "contraseñausuario", usuariocondicion, idestudiante) FROM stdin;
    public          postgres    false    256   }                0    42310    usuario_personal 
   TABLE DATA           {   COPY public.usuario_personal (id_usuariop, nombreusuariop, "contraseñausuario", idpersonal, usuariocondicion) FROM stdin;
    public          postgres    false    258   �                0    42315    usuario_servicio 
   TABLE DATA           V   COPY public.usuario_servicio (idusuario_servicio, idservicio, idusuarioe) FROM stdin;
    public          postgres    false    260   j      *           0    0    atencion_idatencion_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.atencion_idatencion_seq', 26, true);
          public          postgres    false    215            +           0    0    carrera_idcarrera_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.carrera_idcarrera_seq', 35, true);
          public          postgres    false    217            ,           0    0    departamento_iddepartamento_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.departamento_iddepartamento_seq', 9, true);
          public          postgres    false    219            -           0    0    derivacion_idderivacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.derivacion_idderivacion_seq', 2, true);
          public          postgres    false    221            .           0    0    estudiante_idestudiante_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.estudiante_idestudiante_seq', 15, true);
          public          postgres    false    223            /           0    0    hoja_ruta_idruta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hoja_ruta_idruta_seq', 5, true);
          public          postgres    false    226            0           0    0    permiso_idpermiso_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.permiso_idpermiso_seq', 4, true);
          public          postgres    false    228            1           0    0    personal_idpersonal_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.personal_idpersonal_seq', 4, true);
          public          postgres    false    230            2           0    0    puesto_idpuesto_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.puesto_idpuesto_seq', 1, false);
          public          postgres    false    232            3           0    0 "   registro_atencion_id_registroa_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.registro_atencion_id_registroa_seq', 5, true);
          public          postgres    false    234            4           0    0 #   registro_hoja_ruta_id_registroh_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.registro_hoja_ruta_id_registroh_seq', 7, true);
          public          postgres    false    236            5           0    0 #   registro_servicios_id_registros_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.registro_servicios_id_registros_seq', 13, true);
          public          postgres    false    238            6           0    0 "   registro_usuarios_id_registrou_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.registro_usuarios_id_registrou_seq', 9, true);
          public          postgres    false    240            7           0    0 $   registro_usuariosp_id_registroup_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.registro_usuariosp_id_registroup_seq', 1, false);
          public          postgres    false    242            8           0    0    rol_idrol_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_idrol_seq', 6, true);
          public          postgres    false    245            9           0    0    rol_permiso_idpermiso_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.rol_permiso_idpermiso_seq', 1, false);
          public          postgres    false    247            :           0    0    rol_permiso_idrol_permiso_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.rol_permiso_idrol_permiso_seq', 10, true);
          public          postgres    false    248            ;           0    0    rol_permiso_idrol_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.rol_permiso_idrol_seq', 1, false);
          public          postgres    false    249            <           0    0    servicio_idservicio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicio_idservicio_seq', 21, true);
          public          postgres    false    251            =           0    0 %   tipo_registrousuario_idtipoaccion_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.tipo_registrousuario_idtipoaccion_seq', 4, true);
          public          postgres    false    253            >           0    0 #   tipoestudiante_idtipoestudiante_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tipoestudiante_idtipoestudiante_seq', 2, true);
          public          postgres    false    255            ?           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 15, true);
          public          postgres    false    257            @           0    0    usuario_personal_id_usuario_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.usuario_personal_id_usuario_seq', 4, true);
          public          postgres    false    259            A           0    0    usuario_servicio_idservicio_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.usuario_servicio_idservicio_seq', 1, false);
          public          postgres    false    261            B           0    0 '   usuario_servicio_idusuario_servicio_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.usuario_servicio_idusuario_servicio_seq', 19, true);
          public          postgres    false    262            C           0    0    usuario_servicio_idusuarioe_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.usuario_servicio_idusuarioe_seq', 1, false);
          public          postgres    false    263                        2606    42348    atencion atencion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.atencion
    ADD CONSTRAINT atencion_pkey PRIMARY KEY (idatencion);
 @   ALTER TABLE ONLY public.atencion DROP CONSTRAINT atencion_pkey;
       public            postgres    false    214                       2606    42350    carrera carrera_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (idcarrera);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public            postgres    false    216                       2606    42352    departamento departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (iddepartamento);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    218                       2606    42354    derivacion derivacion_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.derivacion
    ADD CONSTRAINT derivacion_pkey PRIMARY KEY (idderivacion);
 D   ALTER TABLE ONLY public.derivacion DROP CONSTRAINT derivacion_pkey;
       public            postgres    false    220                       2606    42356    estudiante estudiante_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (idestudiante);
 D   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT estudiante_pkey;
       public            postgres    false    222            
           2606    42358    gestion gestion_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.gestion
    ADD CONSTRAINT gestion_pkey PRIMARY KEY (idgestion);
 >   ALTER TABLE ONLY public.gestion DROP CONSTRAINT gestion_pkey;
       public            postgres    false    224                       2606    42360    hoja_ruta hoja_ruta_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hoja_ruta
    ADD CONSTRAINT hoja_ruta_pkey PRIMARY KEY (idruta);
 B   ALTER TABLE ONLY public.hoja_ruta DROP CONSTRAINT hoja_ruta_pkey;
       public            postgres    false    225                       2606    42362    permiso permiso_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT permiso_pkey PRIMARY KEY (idpermiso);
 >   ALTER TABLE ONLY public.permiso DROP CONSTRAINT permiso_pkey;
       public            postgres    false    227                       2606    42364    personal personal_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_pkey PRIMARY KEY (idpersonal);
 @   ALTER TABLE ONLY public.personal DROP CONSTRAINT personal_pkey;
       public            postgres    false    229                       2606    42366    puesto puesto_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.puesto
    ADD CONSTRAINT puesto_pkey PRIMARY KEY (idpuesto);
 <   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_pkey;
       public            postgres    false    231                       2606    42368 (   registro_atencion registro_atencion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT registro_atencion_pkey PRIMARY KEY (id_registroa);
 R   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT registro_atencion_pkey;
       public            postgres    false    233                       2606    42370 *   registro_hoja_ruta registro_hoja_ruta_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT registro_hoja_ruta_pkey PRIMARY KEY (id_registroh);
 T   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT registro_hoja_ruta_pkey;
       public            postgres    false    235                       2606    42372 *   registro_servicios registro_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT registro_servicios_pkey PRIMARY KEY (id_registros);
 T   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT registro_servicios_pkey;
       public            postgres    false    237                       2606    42374 (   registro_usuarios registro_usuarios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT registro_usuarios_pkey PRIMARY KEY (id_registrou);
 R   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT registro_usuarios_pkey;
       public            postgres    false    239                       2606    42376 *   registro_usuariosp registro_usuariosp_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT registro_usuariosp_pkey PRIMARY KEY (id_registroup);
 T   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT registro_usuariosp_pkey;
       public            postgres    false    241                       2606    42378    reporte reporte_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT reporte_pkey PRIMARY KEY (idreporte);
 >   ALTER TABLE ONLY public.reporte DROP CONSTRAINT reporte_pkey;
       public            postgres    false    243                        2606    42380    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (idrol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    244            "           2606    42382    servicio servicio_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pkey PRIMARY KEY (idservicio);
 @   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pkey;
       public            postgres    false    250            $           2606    42384 .   tipo_registrousuario tipo_registrousuario_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.tipo_registrousuario
    ADD CONSTRAINT tipo_registrousuario_pkey PRIMARY KEY (idtipoaccion);
 X   ALTER TABLE ONLY public.tipo_registrousuario DROP CONSTRAINT tipo_registrousuario_pkey;
       public            postgres    false    252            &           2606    42386 "   tipoestudiante tipoestudiante_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tipoestudiante
    ADD CONSTRAINT tipoestudiante_pkey PRIMARY KEY (idtipoestudiante);
 L   ALTER TABLE ONLY public.tipoestudiante DROP CONSTRAINT tipoestudiante_pkey;
       public            postgres    false    254            *           2606    42388 &   usuario_personal usuario_personal_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.usuario_personal
    ADD CONSTRAINT usuario_personal_pkey PRIMARY KEY (id_usuariop);
 P   ALTER TABLE ONLY public.usuario_personal DROP CONSTRAINT usuario_personal_pkey;
       public            postgres    false    258            (           2606    42390    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuarioe);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    256            ,           2606    42392 &   usuario_servicio usuario_servicio_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT usuario_servicio_pkey PRIMARY KEY (idusuario_servicio);
 P   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT usuario_servicio_pkey;
       public            postgres    false    260            /           2606    42393 %   derivacion derivacion_idpersonal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.derivacion
    ADD CONSTRAINT derivacion_idpersonal_fkey FOREIGN KEY (idpersonal) REFERENCES public.personal(idpersonal);
 O   ALTER TABLE ONLY public.derivacion DROP CONSTRAINT derivacion_idpersonal_fkey;
       public          postgres    false    229    220    3344            2           2606    42398 %   hoja_ruta hoja_ruta_idderivacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hoja_ruta
    ADD CONSTRAINT hoja_ruta_idderivacion_fkey FOREIGN KEY (idderivacion) REFERENCES public.derivacion(idderivacion);
 O   ALTER TABLE ONLY public.hoja_ruta DROP CONSTRAINT hoja_ruta_idderivacion_fkey;
       public          postgres    false    225    3334    220            >           2606    42403    registro_usuarios id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop) NOT VALID;
 G   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT id_usuariop;
       public          postgres    false    258    239    3370            A           2606    42408    registro_usuariosp id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 H   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT id_usuariop;
       public          postgres    false    241    3370    258            8           2606    42413    registro_hoja_ruta id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 H   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT id_usuariop;
       public          postgres    false    258    235    3370            5           2606    42418    registro_atencion id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 G   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT id_usuariop;
       public          postgres    false    3370    233    258            ;           2606    42423    registro_servicios id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 H   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT id_usuariop;
       public          postgres    false    3370    237    258            6           2606    42428    registro_atencion idatencion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT idatencion FOREIGN KEY (idatencion) REFERENCES public.atencion(idatencion);
 F   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT idatencion;
       public          postgres    false    3328    233    214            0           2606    42433    estudiante idcarrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT idcarrera FOREIGN KEY (idcarrera) REFERENCES public.carrera(idcarrera) NOT VALID;
 >   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT idcarrera;
       public          postgres    false    216    222    3330            .           2606    42438    carrera iddepartamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT iddepartamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento) NOT VALID;
 @   ALTER TABLE ONLY public.carrera DROP CONSTRAINT iddepartamento;
       public          postgres    false    3332    218    216            3           2606    42443    personal iddepartamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT iddepartamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento) NOT VALID;
 A   ALTER TABLE ONLY public.personal DROP CONSTRAINT iddepartamento;
       public          postgres    false    3332    229    218            F           2606    42448    usuario idestudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT idestudiante FOREIGN KEY (idestudiante) REFERENCES public.estudiante(idestudiante) NOT VALID;
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT idestudiante;
       public          postgres    false    222    256    3336            -           2606    42453    atencion idestudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.atencion
    ADD CONSTRAINT idestudiante FOREIGN KEY (idestudiante) REFERENCES public.estudiante(idestudiante);
 ?   ALTER TABLE ONLY public.atencion DROP CONSTRAINT idestudiante;
       public          postgres    false    3336    214    222            D           2606    42458    rol_permiso idpermiso    FK CONSTRAINT        ALTER TABLE ONLY public.rol_permiso
    ADD CONSTRAINT idpermiso FOREIGN KEY (idpermiso) REFERENCES public.permiso(idpermiso);
 ?   ALTER TABLE ONLY public.rol_permiso DROP CONSTRAINT idpermiso;
       public          postgres    false    3342    246    227            G           2606    42463    usuario_personal idpersonal    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_personal
    ADD CONSTRAINT idpersonal FOREIGN KEY (idpersonal) REFERENCES public.personal(idpersonal) NOT VALID;
 E   ALTER TABLE ONLY public.usuario_personal DROP CONSTRAINT idpersonal;
       public          postgres    false    229    3344    258            4           2606    42468    personal idrol    FK CONSTRAINT     v   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT idrol FOREIGN KEY (idrol) REFERENCES public.rol(idrol) NOT VALID;
 8   ALTER TABLE ONLY public.personal DROP CONSTRAINT idrol;
       public          postgres    false    244    229    3360            E           2606    42473    rol_permiso idrol    FK CONSTRAINT     o   ALTER TABLE ONLY public.rol_permiso
    ADD CONSTRAINT idrol FOREIGN KEY (idrol) REFERENCES public.rol(idrol);
 ;   ALTER TABLE ONLY public.rol_permiso DROP CONSTRAINT idrol;
       public          postgres    false    244    3360    246            9           2606    42478    registro_hoja_ruta idruta    FK CONSTRAINT        ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT idruta FOREIGN KEY (idruta) REFERENCES public.hoja_ruta(idruta);
 C   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT idruta;
       public          postgres    false    235    3340    225            H           2606    42483    usuario_servicio idservicio    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT idservicio FOREIGN KEY (idservicio) REFERENCES public.servicio(idservicio);
 E   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT idservicio;
       public          postgres    false    250    260    3362            <           2606    42488    registro_servicios idservicio    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT idservicio FOREIGN KEY (idservicio) REFERENCES public.servicio(idservicio);
 G   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT idservicio;
       public          postgres    false    3362    250    237            ?           2606    42493    registro_usuarios idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion) NOT VALID;
 H   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT idtipoaccion;
       public          postgres    false    252    239    3364            B           2606    42498    registro_usuariosp idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 I   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT idtipoaccion;
       public          postgres    false    252    3364    241            :           2606    42503    registro_hoja_ruta idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 I   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT idtipoaccion;
       public          postgres    false    235    252    3364            7           2606    42508    registro_atencion idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 H   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT idtipoaccion;
       public          postgres    false    3364    233    252            =           2606    42513    registro_servicios idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 I   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT idtipoaccion;
       public          postgres    false    237    252    3364            1           2606    42518    estudiante idtipoestudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT idtipoestudiante FOREIGN KEY (idtipoestudiante) REFERENCES public.tipoestudiante(idtipoestudiante) NOT VALID;
 E   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT idtipoestudiante;
       public          postgres    false    3366    222    254            @           2606    42523    registro_usuarios idusuarioe    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT idusuarioe FOREIGN KEY (idusuarioe) REFERENCES public.usuario(idusuarioe) NOT VALID;
 F   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT idusuarioe;
       public          postgres    false    3368    239    256            I           2606    42528    usuario_servicio idusuarioe    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT idusuarioe FOREIGN KEY (idusuarioe) REFERENCES public.usuario(idusuarioe);
 E   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT idusuarioe;
       public          postgres    false    256    3368    260            C           2606    42533 %   registro_usuariosp registro_usuariosp    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT registro_usuariosp FOREIGN KEY (id_usuariopr) REFERENCES public.usuario_personal(id_usuariop);
 O   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT registro_usuariosp;
       public          postgres    false    258    241    3370            �     x���KR� ��p
.�G'KLZ�b ՄYy�s��8Sje����ŴԦ�]�$�b3BZ�5�	�w/y[�2s@ �F� �l��n�[1� f������r�/�����[9�`�7t�_�!}r����]ϙ)�答��F2��-"��JO�T[z�o������)1�1���T{���T��f�u��P�ɞ+yÃ�.�$B�RF\�=��geE���v9,�AX���l�$$���*pWK�Ζ��]ưy��z�����s��|��      �   �   x�]�A�0��+��&��8�X"���_�ē�1������zvm^��5AmA��F�ڡ݃�Q�JV2A��<��r��G��M�Vߔ�J����E�'����y]�����9���%��$��y~���~Kz1E�$�ʂ>v���6o      �   �   x�E�I�0E��)|�2���XJcȀT�+�@��-�~��΍�$������h/D��᳣k���;N$X 0T��Q���� )�I�O2�֑�-	�5W�����&�\���[�b�7����^'�9ʰ:'�j1F��vo�f��e���'�����{�� 8�      �   Q   x�3�4202�50�52��M,�N-��K�tq��4���K�/�M,�4�2�*4�5�DV������������i��'F��� ՠ�      �   `  x����j�0��O��O0�i�G��R��2Q;WP+����/΂��э�P�w��N�Lt�
}��T���
�����Kh�]om��[�[�$�q(8D� 4����bP8q<�ҌS��v�`�z�})W<`���P�<
�N�G��9��T��VU�D����E	�Q��u��V�9��vx�co\�3Jhc�J��H�c����}^���zfi_����LK��MY�u+���=4�G����R�:_���\�x"dB�̍`,�����I9�<&"j@J�^j��`7'��פ�,��cW`a��P>1�H�*�_�p^g�L?L%�vL h[���X���!��d�"���5�����y�cC�      �      x������ � �      �   �   x�����0E��^�(I������JL����^�#��@Bp�d����?��B߹��͉VΏ;C�$����8�?6��3A!��&0��oH)ue�f���G��F�D��1�o��-]�-V���9L�KVh�Gy@���ET����(x�Yk���L�      �   =   x�3�tv�����2�t<<���3�˘3(5=���(��˄��?�7���$�+F��� ���      �   �   x�u��
�@��������wf��#e��Eq�,aL(ߟ�ڴ���?���6�i��
��4��M�ݓk�]X�CZ9��:A෕/�r���/���Vs��b���.���d���Ù�8�P�Jn��F�5H�V$���5�AC�y�#!���3�      �      x������ � �      �   W   x�m���0C�s���4i�Y��'$���dJ�3��.h��@˘d�����n(��9>��r70��n�wS�����L�4U� `tV      �   t   x�mʱ1�X��ǁ����a�ۑ��f�����󲼼���ڤV���?%j3O�`���2/�aضv�bkJ��g�t.CS�����l��S���+�.uJ<
l#5�{A^*"o�*�      �   L   x�m���0C�3�Rd�@f��s�+U���ɤP=>.�%��u<���&�?2�jVb+���}����z��>T�n      �   �   x�e���@�3�b�g�Ԓ��{��XB�3NF�YP��y!ɪ}PEq�OSd��.{��qҀx��P�U��5�(��n���a��8�MRZa����O?�H�1eRb���>��Yf�i�j�$���a�/�G+v      �      x������ � �      �      x������ � �      �   P   x�3�tIMN���4�2�t�,JM.�/RHIUpN,*J-J��r�:���f�.�������cP�k����s�'P2F��� s�2      �   6   x�ȹ  ��x]���z��:X��%������6�v���6Y����In_�      �   6   x�32�rq��W�qtR06�4�2�D����̀�F���>0�\1z\\\ ~�      �   0   x�3���v
��2�tt	u����2�=���L8]\���=... �
�             x�3�rurt��2����c���� `�9         F  x���ˎ�0����S�L(��:��ZZifSK��"��gONW'O>Tv٩R�YM�,;X�dR�+Y�S6�|Z`�� JU�b�)�>�����*ju9v�1r��iSV�!m�۹�e��I���I�mw���E6`�`y�$H�e�O��xfQw��Ż��'��$��ҁ�̪F��;M�q�
1��[� l��n.գ�F-b���D~���t�~xq���E7��B����	�N���$	��5�i���O�!N�>� ��jZTA=(w�X�.ua����>nuncH�L������2�����E?��_��g         �   x��A�0 ��ۏ���]��LG�-����`��}��Ǘ����p�ԈkmUpr��S�i�p�\B�!NﰅF˥)i ~����U�)�~J�$�',��3�P_����I4#Ԫ��|����I�6���a(O         *   x�34�4��4�24�42��2��42�4�
i�=... e3     