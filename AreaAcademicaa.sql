PGDMP  3    -                {            AreaAcademicaBn    10.23    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    53163    AreaAcademicaBn    DATABASE     �   CREATE DATABASE "AreaAcademicaBn" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 !   DROP DATABASE "AreaAcademicaBn";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    53166    academicaward    TABLE     :  CREATE TABLE public.academicaward (
    idacademicaward integer NOT NULL,
    date date NOT NULL,
    nameacademicaward character varying(255),
    description character varying(255),
    recipients character varying(255),
    idstudent integer NOT NULL,
    status smallint NOT NULL,
    trial109 character(1)
);
 !   DROP TABLE public.academicaward;
       public            postgres    false    6            �            1259    53164 !   academicaward_idacademicaward_seq    SEQUENCE     �   CREATE SEQUENCE public.academicaward_idacademicaward_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.academicaward_idacademicaward_seq;
       public          postgres    false    197    6            �           0    0 !   academicaward_idacademicaward_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.academicaward_idacademicaward_seq OWNED BY public.academicaward.idacademicaward;
          public          postgres    false    196            �            1259    53178    academicdiploma    TABLE     �   CREATE TABLE public.academicdiploma (
    idacademicdiploma integer NOT NULL,
    title character varying(255),
    date date,
    type character varying(255),
    status smallint NOT NULL,
    idstudent integer NOT NULL,
    trial112 character(1)
);
 #   DROP TABLE public.academicdiploma;
       public            postgres    false    6            �            1259    53176 %   academicdiploma_idacademicdiploma_seq    SEQUENCE     �   CREATE SEQUENCE public.academicdiploma_idacademicdiploma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.academicdiploma_idacademicdiploma_seq;
       public          postgres    false    199    6            �           0    0 %   academicdiploma_idacademicdiploma_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.academicdiploma_idacademicdiploma_seq OWNED BY public.academicdiploma.idacademicdiploma;
          public          postgres    false    198            �            1259    53190    activity    TABLE     �   CREATE TABLE public.activity (
    idactivity integer NOT NULL,
    activityname character varying(255),
    description character varying(255),
    status smallint NOT NULL,
    trial112 character(1)
);
    DROP TABLE public.activity;
       public            postgres    false    6            �            1259    53188    activity_idactivity_seq    SEQUENCE     �   CREATE SEQUENCE public.activity_idactivity_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.activity_idactivity_seq;
       public          postgres    false    201    6            �           0    0    activity_idactivity_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.activity_idactivity_seq OWNED BY public.activity.idactivity;
          public          postgres    false    200            �            1259    53201    application    TABLE     ]  CREATE TABLE public.application (
    idapplication integer NOT NULL,
    applicantfirstname character varying(255),
    applicantlastname character varying(255),
    gender character varying(255),
    dateofbirth date NOT NULL,
    temporalid character varying(255),
    schooloforigin character varying(255),
    applicationdate date NOT NULL,
    grade character varying(255),
    preferredcareer character varying(255),
    secondpreferredcareer character varying(255),
    thirdpreferredcareer character varying(255),
    idstudent integer,
    status smallint NOT NULL,
    trial112 character(1)
);
    DROP TABLE public.application;
       public            postgres    false    6            �            1259    53199    application_idapplication_seq    SEQUENCE     �   CREATE SEQUENCE public.application_idapplication_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.application_idapplication_seq;
       public          postgres    false    6    203            �           0    0    application_idapplication_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.application_idapplication_seq OWNED BY public.application.idapplication;
          public          postgres    false    202            �            1259    53212    candidatestudent    TABLE     �  CREATE TABLE public.candidatestudent (
    idcandidatestudent integer NOT NULL,
    contactinfo character varying(255),
    gender character varying(255),
    address character varying(255),
    nationality character varying(255),
    name character varying(255),
    idstudent integer NOT NULL,
    idapplication integer NOT NULL,
    status smallint NOT NULL,
    trial112 character(1)
);
 $   DROP TABLE public.candidatestudent;
       public            postgres    false    6            �            1259    53210 '   candidatestudent_idcandidatestudent_seq    SEQUENCE     �   CREATE SEQUENCE public.candidatestudent_idcandidatestudent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.candidatestudent_idcandidatestudent_seq;
       public          postgres    false    6    205            �           0    0 '   candidatestudent_idcandidatestudent_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.candidatestudent_idcandidatestudent_seq OWNED BY public.candidatestudent.idcandidatestudent;
          public          postgres    false    204            �            1259    53224    career    TABLE     �   CREATE TABLE public.career (
    idcareer integer NOT NULL,
    careername character varying(255),
    semester integer NOT NULL,
    description character varying(255),
    status smallint NOT NULL,
    trial112 character(1)
);
    DROP TABLE public.career;
       public            postgres    false    6            �            1259    53222    career_idcareer_seq    SEQUENCE     �   CREATE SEQUENCE public.career_idcareer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.career_idcareer_seq;
       public          postgres    false    207    6            �           0    0    career_idcareer_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.career_idcareer_seq OWNED BY public.career.idcareer;
          public          postgres    false    206            �            1259    53235 
   careerplan    TABLE     �   CREATE TABLE public.careerplan (
    idcareerplan integer NOT NULL,
    idcareer integer NOT NULL,
    idplan integer NOT NULL,
    status smallint NOT NULL,
    trial115 character(1)
);
    DROP TABLE public.careerplan;
       public            postgres    false    6            �            1259    53233    careerplan_idcareerplan_seq    SEQUENCE     �   CREATE SEQUENCE public.careerplan_idcareerplan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.careerplan_idcareerplan_seq;
       public          postgres    false    6    209            �           0    0    careerplan_idcareerplan_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.careerplan_idcareerplan_seq OWNED BY public.careerplan.idcareerplan;
          public          postgres    false    208            �            1259    53245    class    TABLE     �   CREATE TABLE public.class (
    idclass integer NOT NULL,
    idgroup integer NOT NULL,
    idemployee integer NOT NULL,
    idsubject integer NOT NULL,
    idclassroom integer NOT NULL,
    status smallint NOT NULL,
    trial115 character(1)
);
    DROP TABLE public.class;
       public            postgres    false    6            �            1259    53243    class_idclass_seq    SEQUENCE     �   CREATE SEQUENCE public.class_idclass_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.class_idclass_seq;
       public          postgres    false    6    211            �           0    0    class_idclass_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.class_idclass_seq OWNED BY public.class.idclass;
          public          postgres    false    210            �            1259    53254 	   classroom    TABLE     �   CREATE TABLE public.classroom (
    idclassroom integer NOT NULL,
    name character varying(255),
    roomnumber character varying(255),
    capacity integer NOT NULL,
    status smallint NOT NULL,
    trial115 character(1)
);
    DROP TABLE public.classroom;
       public            postgres    false    6            �            1259    53252    classroom_idclassroom_seq    SEQUENCE     �   CREATE SEQUENCE public.classroom_idclassroom_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.classroom_idclassroom_seq;
       public          postgres    false    6    213            �           0    0    classroom_idclassroom_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.classroom_idclassroom_seq OWNED BY public.classroom.idclassroom;
          public          postgres    false    212            �            1259    53265 
   conference    TABLE     :  CREATE TABLE public.conference (
    idconference integer NOT NULL,
    nameconference character varying(255),
    startdate timestamp without time zone NOT NULL,
    enddate timestamp without time zone NOT NULL,
    location character varying(255),
    iddepartment integer NOT NULL,
    trial115 character(1)
);
    DROP TABLE public.conference;
       public            postgres    false    6            �            1259    53263    conference_idconference_seq    SEQUENCE     �   CREATE SEQUENCE public.conference_idconference_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.conference_idconference_seq;
       public          postgres    false    215    6            �           0    0    conference_idconference_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.conference_idconference_seq OWNED BY public.conference.idconference;
          public          postgres    false    214            �            1259    53277    contract    TABLE     �   CREATE TABLE public.contract (
    idcontract integer NOT NULL,
    startdate date NOT NULL,
    enddate date NOT NULL,
    salary numeric(10,0) NOT NULL,
    contracttype character varying(255),
    status smallint NOT NULL,
    trial115 character(1)
);
    DROP TABLE public.contract;
       public            postgres    false    6            �            1259    53275    contract_idcontract_seq    SEQUENCE     �   CREATE SEQUENCE public.contract_idcontract_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contract_idcontract_seq;
       public          postgres    false    217    6            �           0    0    contract_idcontract_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contract_idcontract_seq OWNED BY public.contract.idcontract;
          public          postgres    false    216            �            1259    53285    course    TABLE     0  CREATE TABLE public.course (
    idcourse integer NOT NULL,
    coursename character varying(255),
    credits integer NOT NULL,
    description character varying(255),
    enrollmentcapacity integer NOT NULL,
    idstudent integer NOT NULL,
    idemployee integer NOT NULL,
    trial119 character(1)
);
    DROP TABLE public.course;
       public            postgres    false    6            �            1259    53283    course_idcourse_seq    SEQUENCE     �   CREATE SEQUENCE public.course_idcourse_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.course_idcourse_seq;
       public          postgres    false    6    219            �           0    0    course_idcourse_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.course_idcourse_seq OWNED BY public.course.idcourse;
          public          postgres    false    218            �            1259    53297    degreerequirements    TABLE       CREATE TABLE public.degreerequirements (
    iddegreerequirements integer NOT NULL,
    semester integer NOT NULL,
    tipo character varying(255),
    status smallint NOT NULL,
    idsubject integer NOT NULL,
    idcareer integer NOT NULL,
    trial119 character(1)
);
 &   DROP TABLE public.degreerequirements;
       public            postgres    false    6            �            1259    53295 +   degreerequirements_iddegreerequirements_seq    SEQUENCE     �   CREATE SEQUENCE public.degreerequirements_iddegreerequirements_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.degreerequirements_iddegreerequirements_seq;
       public          postgres    false    221    6            �           0    0 +   degreerequirements_iddegreerequirements_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.degreerequirements_iddegreerequirements_seq OWNED BY public.degreerequirements.iddegreerequirements;
          public          postgres    false    220            �            1259    53306 
   department    TABLE     �  CREATE TABLE public.department (
    iddepartment integer NOT NULL,
    name character varying(255),
    description character varying(255),
    director character varying(255),
    foundingdate date NOT NULL,
    phone character varying(255),
    email character varying(255),
    location character varying(255),
    openinghour time without time zone NOT NULL,
    closinghour time without time zone NOT NULL,
    idemployee integer NOT NULL,
    status smallint NOT NULL,
    trial119 character(1)
);
    DROP TABLE public.department;
       public            postgres    false    6            �            1259    53304    department_iddepartment_seq    SEQUENCE     �   CREATE SEQUENCE public.department_iddepartment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.department_iddepartment_seq;
       public          postgres    false    223    6            �           0    0    department_iddepartment_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.department_iddepartment_seq OWNED BY public.department.iddepartment;
          public          postgres    false    222            �            1259    53318    detailclass    TABLE     
  CREATE TABLE public.detailclass (
    iddetailclass integer NOT NULL,
    starttime time without time zone,
    endtime time without time zone,
    days character varying(255),
    status smallint NOT NULL,
    idclass integer NOT NULL,
    trial119 character(1)
);
    DROP TABLE public.detailclass;
       public            postgres    false    6            �            1259    53316    detailclass_iddetailclass_seq    SEQUENCE     �   CREATE SEQUENCE public.detailclass_iddetailclass_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.detailclass_iddetailclass_seq;
       public          postgres    false    225    6            �           0    0    detailclass_iddetailclass_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.detailclass_iddetailclass_seq OWNED BY public.detailclass.iddetailclass;
          public          postgres    false    224            �            1259    53327    dropout    TABLE     �   CREATE TABLE public.dropout (
    iddropout integer NOT NULL,
    dropoutdate date NOT NULL,
    reason character varying(255),
    idstudent integer NOT NULL,
    status smallint NOT NULL,
    trial119 character(1)
);
    DROP TABLE public.dropout;
       public            postgres    false    6            �            1259    53325    dropout_iddropout_seq    SEQUENCE     �   CREATE SEQUENCE public.dropout_iddropout_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dropout_iddropout_seq;
       public          postgres    false    227    6            �           0    0    dropout_iddropout_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dropout_iddropout_seq OWNED BY public.dropout.iddropout;
          public          postgres    false    226            �            1259    53336    employee    TABLE     K  CREATE TABLE public.employee (
    idemployee integer NOT NULL,
    name character varying(255),
    lastname character varying(255),
    dateofbirth date NOT NULL,
    gender character varying(255),
    address character varying(255),
    phonenumber character varying(255),
    email character varying(255),
    maritalstatus character varying(255),
    hiredate date NOT NULL,
    haspreviousexperiencie smallint NOT NULL,
    status smallint NOT NULL,
    idcontract integer NOT NULL,
    idposition integer NOT NULL,
    idapplication integer NOT NULL,
    trial119 character(1)
);
    DROP TABLE public.employee;
       public            postgres    false    6            �            1259    53334    employee_idemployee_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_idemployee_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.employee_idemployee_seq;
       public          postgres    false    6    229            �           0    0    employee_idemployee_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.employee_idemployee_seq OWNED BY public.employee.idemployee;
          public          postgres    false    228            �            1259    53348    employeeevent    TABLE     �   CREATE TABLE public.employeeevent (
    idemployeeevent integer NOT NULL,
    idemployee integer NOT NULL,
    idevent integer NOT NULL,
    status smallint NOT NULL,
    trial122 character(1)
);
 !   DROP TABLE public.employeeevent;
       public            postgres    false    6            �            1259    53346 !   employeeevent_idemployeeevent_seq    SEQUENCE     �   CREATE SEQUENCE public.employeeevent_idemployeeevent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.employeeevent_idemployeeevent_seq;
       public          postgres    false    6    231            �           0    0 !   employeeevent_idemployeeevent_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.employeeevent_idemployeeevent_seq OWNED BY public.employeeevent.idemployeeevent;
          public          postgres    false    230            �            1259    53358    event    TABLE     I  CREATE TABLE public.event (
    idevent integer NOT NULL,
    name character varying(255),
    startdate timestamp without time zone NOT NULL,
    enddate timestamp without time zone NOT NULL,
    description character varying(255),
    location character varying(255),
    status smallint NOT NULL,
    trial122 character(1)
);
    DROP TABLE public.event;
       public            postgres    false    6            �            1259    53356    event_idevent_seq    SEQUENCE     �   CREATE SEQUENCE public.event_idevent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.event_idevent_seq;
       public          postgres    false    6    233            �           0    0    event_idevent_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.event_idevent_seq OWNED BY public.event.idevent;
          public          postgres    false    232            �            1259    53369    eventstudent    TABLE     �   CREATE TABLE public.eventstudent (
    ideventstudent integer NOT NULL,
    idevent integer NOT NULL,
    idstudent integer NOT NULL,
    status smallint NOT NULL,
    trial122 character(1)
);
     DROP TABLE public.eventstudent;
       public            postgres    false    6            �            1259    53367    eventstudent_ideventstudent_seq    SEQUENCE     �   CREATE SEQUENCE public.eventstudent_ideventstudent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.eventstudent_ideventstudent_seq;
       public          postgres    false    6    235            �           0    0    eventstudent_ideventstudent_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.eventstudent_ideventstudent_seq OWNED BY public.eventstudent.ideventstudent;
          public          postgres    false    234            �            1259    53379    externalpayment    TABLE     +  CREATE TABLE public.externalpayment (
    idexternalpayment integer NOT NULL,
    paymentamount numeric(10,0) NOT NULL,
    payee character varying(255),
    referencenumber character varying(255),
    paymentmethod character varying(255),
    status smallint NOT NULL,
    trial122 character(1)
);
 #   DROP TABLE public.externalpayment;
       public            postgres    false    6            �            1259    53377 %   externalpayment_idexternalpayment_seq    SEQUENCE     �   CREATE SEQUENCE public.externalpayment_idexternalpayment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.externalpayment_idexternalpayment_seq;
       public          postgres    false    237    6            �           0    0 %   externalpayment_idexternalpayment_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.externalpayment_idexternalpayment_seq OWNED BY public.externalpayment.idexternalpayment;
          public          postgres    false    236            �            1259    53390    groupp    TABLE     �   CREATE TABLE public.groupp (
    idgroup integer NOT NULL,
    groupname character varying(255),
    numberofstudents integer NOT NULL,
    status smallint NOT NULL,
    trial122 character(1)
);
    DROP TABLE public.groupp;
       public            postgres    false    6            �            1259    53388    groupp_idgroup_seq    SEQUENCE     �   CREATE SEQUENCE public.groupp_idgroup_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.groupp_idgroup_seq;
       public          postgres    false    6    239            �           0    0    groupp_idgroup_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.groupp_idgroup_seq OWNED BY public.groupp.idgroup;
          public          postgres    false    238            �            1259    53398    kardex    TABLE     '  CREATE TABLE public.kardex (
    idkardex integer NOT NULL,
    grade character varying(255),
    name character varying(255),
    date timestamp without time zone NOT NULL,
    status smallint NOT NULL,
    idstudent integer NOT NULL,
    idclass integer NOT NULL,
    trial125 character(1)
);
    DROP TABLE public.kardex;
       public            postgres    false    6            �            1259    53396    kardex_idkardex_seq    SEQUENCE     �   CREATE SEQUENCE public.kardex_idkardex_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.kardex_idkardex_seq;
       public          postgres    false    241    6            �           0    0    kardex_idkardex_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.kardex_idkardex_seq OWNED BY public.kardex.idkardex;
          public          postgres    false    240            �            1259    53410    plansubject    TABLE     �   CREATE TABLE public.plansubject (
    idplansubject integer NOT NULL,
    idplan integer NOT NULL,
    idsubject integer NOT NULL,
    status smallint NOT NULL,
    trial125 character(1)
);
    DROP TABLE public.plansubject;
       public            postgres    false    6            �            1259    53408    plansubject_idplansubject_seq    SEQUENCE     �   CREATE SEQUENCE public.plansubject_idplansubject_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.plansubject_idplansubject_seq;
       public          postgres    false    243    6            �           0    0    plansubject_idplansubject_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.plansubject_idplansubject_seq OWNED BY public.plansubject.idplansubject;
          public          postgres    false    242            �            1259    53420    position    TABLE       CREATE TABLE public."position" (
    idposition integer NOT NULL,
    name character varying(255),
    description character varying(255),
    contracttype character varying(255),
    salary numeric(10,0) NOT NULL,
    status smallint NOT NULL,
    trial125 character(1)
);
    DROP TABLE public."position";
       public            postgres    false    6            �            1259    53418    position_idposition_seq    SEQUENCE     �   CREATE SEQUENCE public.position_idposition_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.position_idposition_seq;
       public          postgres    false    245    6            �           0    0    position_idposition_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.position_idposition_seq OWNED BY public."position".idposition;
          public          postgres    false    244            �            1259    53431    service    TABLE     X  CREATE TABLE public.service (
    idservice integer NOT NULL,
    servicecost numeric(10,0) NOT NULL,
    startdate date NOT NULL,
    enddate date NOT NULL,
    servicedescription character varying(255),
    servicename character varying(255),
    idexternalpayment integer NOT NULL,
    status smallint NOT NULL,
    trial125 character(1)
);
    DROP TABLE public.service;
       public            postgres    false    6            �            1259    53429    service_idservice_seq    SEQUENCE     �   CREATE SEQUENCE public.service_idservice_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.service_idservice_seq;
       public          postgres    false    6    247            �           0    0    service_idservice_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.service_idservice_seq OWNED BY public.service.idservice;
          public          postgres    false    246            �            1259    53443    servicepayment    TABLE     X  CREATE TABLE public.servicepayment (
    idservicepayment integer NOT NULL,
    amount numeric(10,0) NOT NULL,
    paymentdate date NOT NULL,
    paymentmethod character varying(255),
    bank character varying(255),
    idapplication integer NOT NULL,
    status smallint NOT NULL,
    idservice integer NOT NULL,
    trial125 character(1)
);
 "   DROP TABLE public.servicepayment;
       public            postgres    false    6            �            1259    53441 #   servicepayment_idservicepayment_seq    SEQUENCE     �   CREATE SEQUENCE public.servicepayment_idservicepayment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.servicepayment_idservicepayment_seq;
       public          postgres    false    6    249            �           0    0 #   servicepayment_idservicepayment_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.servicepayment_idservicepayment_seq OWNED BY public.servicepayment.idservicepayment;
          public          postgres    false    248            �            1259    53455    student    TABLE     �  CREATE TABLE public.student (
    idstudent integer NOT NULL,
    name character varying(255),
    lastname character varying(255),
    middlename character varying(255),
    dateofbirth date NOT NULL,
    gender character varying(255),
    address character varying(255),
    phonenumber character varying(255),
    email character varying(255),
    status smallint NOT NULL,
    idplan integer NOT NULL,
    trial128 character(1)
);
    DROP TABLE public.student;
       public            postgres    false    6            �            1259    53453    student_idstudent_seq    SEQUENCE     �   CREATE SEQUENCE public.student_idstudent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.student_idstudent_seq;
       public          postgres    false    251    6            �           0    0    student_idstudent_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.student_idstudent_seq OWNED BY public.student.idstudent;
          public          postgres    false    250            �            1259    53467    studentactivity    TABLE     �   CREATE TABLE public.studentactivity (
    idstudentactivity integer NOT NULL,
    idstudent integer NOT NULL,
    idactivity integer NOT NULL,
    status smallint NOT NULL,
    trial128 character(1)
);
 #   DROP TABLE public.studentactivity;
       public            postgres    false    6            �            1259    53465 %   studentactivity_idstudentactivity_seq    SEQUENCE     �   CREATE SEQUENCE public.studentactivity_idstudentactivity_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.studentactivity_idstudentactivity_seq;
       public          postgres    false    253    6            �           0    0 %   studentactivity_idstudentactivity_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.studentactivity_idstudentactivity_seq OWNED BY public.studentactivity.idstudentactivity;
          public          postgres    false    252            �            1259    53477 	   studyplan    TABLE     �   CREATE TABLE public.studyplan (
    idplan integer NOT NULL,
    description character varying(255),
    status smallint NOT NULL,
    idclass integer NOT NULL,
    trial128 character(1)
);
    DROP TABLE public.studyplan;
       public            postgres    false    6            �            1259    53475    studyplan_idplan_seq    SEQUENCE     �   CREATE SEQUENCE public.studyplan_idplan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.studyplan_idplan_seq;
       public          postgres    false    6    255            �           0    0    studyplan_idplan_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.studyplan_idplan_seq OWNED BY public.studyplan.idplan;
          public          postgres    false    254                       1259    53486    subject    TABLE     �   CREATE TABLE public.subject (
    idsubject integer NOT NULL,
    name character varying(255),
    credits integer NOT NULL,
    code character varying(255),
    status smallint NOT NULL,
    trial128 character(1)
);
    DROP TABLE public.subject;
       public            postgres    false    6                        1259    53484    subject_idsubject_seq    SEQUENCE     �   CREATE SEQUENCE public.subject_idsubject_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.subject_idsubject_seq;
       public          postgres    false    257    6            �           0    0    subject_idsubject_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.subject_idsubject_seq OWNED BY public.subject.idsubject;
          public          postgres    false    256                       1259    53497    sysdiagrams    TABLE     �   CREATE TABLE public.sysdiagrams (
    name character varying(128) NOT NULL,
    principal_id integer NOT NULL,
    diagram_id integer NOT NULL,
    version integer,
    definition character varying(255),
    trial128 character(1)
);
    DROP TABLE public.sysdiagrams;
       public            postgres    false    6                       1259    53495    sysdiagrams_diagram_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sysdiagrams_diagram_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.sysdiagrams_diagram_id_seq;
       public          postgres    false    6    259            �           0    0    sysdiagrams_diagram_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.sysdiagrams_diagram_id_seq OWNED BY public.sysdiagrams.diagram_id;
          public          postgres    false    258                       1259    53507    teacherevaluation    TABLE       CREATE TABLE public.teacherevaluation (
    idteacherevaluation integer NOT NULL,
    date date NOT NULL,
    calification numeric(10,0),
    status smallint NOT NULL,
    idstudent integer NOT NULL,
    idsubject integer NOT NULL,
    trial128 character(1)
);
 %   DROP TABLE public.teacherevaluation;
       public            postgres    false    6                       1259    53505 )   teacherevaluation_idteacherevaluation_seq    SEQUENCE     �   CREATE SEQUENCE public.teacherevaluation_idteacherevaluation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.teacherevaluation_idteacherevaluation_seq;
       public          postgres    false    6    261            �           0    0 )   teacherevaluation_idteacherevaluation_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.teacherevaluation_idteacherevaluation_seq OWNED BY public.teacherevaluation.idteacherevaluation;
          public          postgres    false    260            A           2604    53169    academicaward idacademicaward    DEFAULT     �   ALTER TABLE ONLY public.academicaward ALTER COLUMN idacademicaward SET DEFAULT nextval('public.academicaward_idacademicaward_seq'::regclass);
 L   ALTER TABLE public.academicaward ALTER COLUMN idacademicaward DROP DEFAULT;
       public          postgres    false    196    197    197            B           2604    53181 !   academicdiploma idacademicdiploma    DEFAULT     �   ALTER TABLE ONLY public.academicdiploma ALTER COLUMN idacademicdiploma SET DEFAULT nextval('public.academicdiploma_idacademicdiploma_seq'::regclass);
 P   ALTER TABLE public.academicdiploma ALTER COLUMN idacademicdiploma DROP DEFAULT;
       public          postgres    false    199    198    199            C           2604    53193    activity idactivity    DEFAULT     z   ALTER TABLE ONLY public.activity ALTER COLUMN idactivity SET DEFAULT nextval('public.activity_idactivity_seq'::regclass);
 B   ALTER TABLE public.activity ALTER COLUMN idactivity DROP DEFAULT;
       public          postgres    false    201    200    201            D           2604    53204    application idapplication    DEFAULT     �   ALTER TABLE ONLY public.application ALTER COLUMN idapplication SET DEFAULT nextval('public.application_idapplication_seq'::regclass);
 H   ALTER TABLE public.application ALTER COLUMN idapplication DROP DEFAULT;
       public          postgres    false    202    203    203            E           2604    53215 #   candidatestudent idcandidatestudent    DEFAULT     �   ALTER TABLE ONLY public.candidatestudent ALTER COLUMN idcandidatestudent SET DEFAULT nextval('public.candidatestudent_idcandidatestudent_seq'::regclass);
 R   ALTER TABLE public.candidatestudent ALTER COLUMN idcandidatestudent DROP DEFAULT;
       public          postgres    false    204    205    205            F           2604    53227    career idcareer    DEFAULT     r   ALTER TABLE ONLY public.career ALTER COLUMN idcareer SET DEFAULT nextval('public.career_idcareer_seq'::regclass);
 >   ALTER TABLE public.career ALTER COLUMN idcareer DROP DEFAULT;
       public          postgres    false    207    206    207            G           2604    53238    careerplan idcareerplan    DEFAULT     �   ALTER TABLE ONLY public.careerplan ALTER COLUMN idcareerplan SET DEFAULT nextval('public.careerplan_idcareerplan_seq'::regclass);
 F   ALTER TABLE public.careerplan ALTER COLUMN idcareerplan DROP DEFAULT;
       public          postgres    false    208    209    209            H           2604    53248    class idclass    DEFAULT     n   ALTER TABLE ONLY public.class ALTER COLUMN idclass SET DEFAULT nextval('public.class_idclass_seq'::regclass);
 <   ALTER TABLE public.class ALTER COLUMN idclass DROP DEFAULT;
       public          postgres    false    210    211    211            I           2604    53257    classroom idclassroom    DEFAULT     ~   ALTER TABLE ONLY public.classroom ALTER COLUMN idclassroom SET DEFAULT nextval('public.classroom_idclassroom_seq'::regclass);
 D   ALTER TABLE public.classroom ALTER COLUMN idclassroom DROP DEFAULT;
       public          postgres    false    213    212    213            J           2604    53268    conference idconference    DEFAULT     �   ALTER TABLE ONLY public.conference ALTER COLUMN idconference SET DEFAULT nextval('public.conference_idconference_seq'::regclass);
 F   ALTER TABLE public.conference ALTER COLUMN idconference DROP DEFAULT;
       public          postgres    false    215    214    215            K           2604    53280    contract idcontract    DEFAULT     z   ALTER TABLE ONLY public.contract ALTER COLUMN idcontract SET DEFAULT nextval('public.contract_idcontract_seq'::regclass);
 B   ALTER TABLE public.contract ALTER COLUMN idcontract DROP DEFAULT;
       public          postgres    false    217    216    217            L           2604    53288    course idcourse    DEFAULT     r   ALTER TABLE ONLY public.course ALTER COLUMN idcourse SET DEFAULT nextval('public.course_idcourse_seq'::regclass);
 >   ALTER TABLE public.course ALTER COLUMN idcourse DROP DEFAULT;
       public          postgres    false    219    218    219            M           2604    53300 '   degreerequirements iddegreerequirements    DEFAULT     �   ALTER TABLE ONLY public.degreerequirements ALTER COLUMN iddegreerequirements SET DEFAULT nextval('public.degreerequirements_iddegreerequirements_seq'::regclass);
 V   ALTER TABLE public.degreerequirements ALTER COLUMN iddegreerequirements DROP DEFAULT;
       public          postgres    false    220    221    221            N           2604    53309    department iddepartment    DEFAULT     �   ALTER TABLE ONLY public.department ALTER COLUMN iddepartment SET DEFAULT nextval('public.department_iddepartment_seq'::regclass);
 F   ALTER TABLE public.department ALTER COLUMN iddepartment DROP DEFAULT;
       public          postgres    false    223    222    223            O           2604    53321    detailclass iddetailclass    DEFAULT     �   ALTER TABLE ONLY public.detailclass ALTER COLUMN iddetailclass SET DEFAULT nextval('public.detailclass_iddetailclass_seq'::regclass);
 H   ALTER TABLE public.detailclass ALTER COLUMN iddetailclass DROP DEFAULT;
       public          postgres    false    224    225    225            P           2604    53330    dropout iddropout    DEFAULT     v   ALTER TABLE ONLY public.dropout ALTER COLUMN iddropout SET DEFAULT nextval('public.dropout_iddropout_seq'::regclass);
 @   ALTER TABLE public.dropout ALTER COLUMN iddropout DROP DEFAULT;
       public          postgres    false    226    227    227            Q           2604    53339    employee idemployee    DEFAULT     z   ALTER TABLE ONLY public.employee ALTER COLUMN idemployee SET DEFAULT nextval('public.employee_idemployee_seq'::regclass);
 B   ALTER TABLE public.employee ALTER COLUMN idemployee DROP DEFAULT;
       public          postgres    false    229    228    229            R           2604    53351    employeeevent idemployeeevent    DEFAULT     �   ALTER TABLE ONLY public.employeeevent ALTER COLUMN idemployeeevent SET DEFAULT nextval('public.employeeevent_idemployeeevent_seq'::regclass);
 L   ALTER TABLE public.employeeevent ALTER COLUMN idemployeeevent DROP DEFAULT;
       public          postgres    false    230    231    231            S           2604    53361    event idevent    DEFAULT     n   ALTER TABLE ONLY public.event ALTER COLUMN idevent SET DEFAULT nextval('public.event_idevent_seq'::regclass);
 <   ALTER TABLE public.event ALTER COLUMN idevent DROP DEFAULT;
       public          postgres    false    233    232    233            T           2604    53372    eventstudent ideventstudent    DEFAULT     �   ALTER TABLE ONLY public.eventstudent ALTER COLUMN ideventstudent SET DEFAULT nextval('public.eventstudent_ideventstudent_seq'::regclass);
 J   ALTER TABLE public.eventstudent ALTER COLUMN ideventstudent DROP DEFAULT;
       public          postgres    false    235    234    235            U           2604    53382 !   externalpayment idexternalpayment    DEFAULT     �   ALTER TABLE ONLY public.externalpayment ALTER COLUMN idexternalpayment SET DEFAULT nextval('public.externalpayment_idexternalpayment_seq'::regclass);
 P   ALTER TABLE public.externalpayment ALTER COLUMN idexternalpayment DROP DEFAULT;
       public          postgres    false    237    236    237            V           2604    53393    groupp idgroup    DEFAULT     p   ALTER TABLE ONLY public.groupp ALTER COLUMN idgroup SET DEFAULT nextval('public.groupp_idgroup_seq'::regclass);
 =   ALTER TABLE public.groupp ALTER COLUMN idgroup DROP DEFAULT;
       public          postgres    false    238    239    239            W           2604    53401    kardex idkardex    DEFAULT     r   ALTER TABLE ONLY public.kardex ALTER COLUMN idkardex SET DEFAULT nextval('public.kardex_idkardex_seq'::regclass);
 >   ALTER TABLE public.kardex ALTER COLUMN idkardex DROP DEFAULT;
       public          postgres    false    241    240    241            X           2604    53413    plansubject idplansubject    DEFAULT     �   ALTER TABLE ONLY public.plansubject ALTER COLUMN idplansubject SET DEFAULT nextval('public.plansubject_idplansubject_seq'::regclass);
 H   ALTER TABLE public.plansubject ALTER COLUMN idplansubject DROP DEFAULT;
       public          postgres    false    243    242    243            Y           2604    53423    position idposition    DEFAULT     |   ALTER TABLE ONLY public."position" ALTER COLUMN idposition SET DEFAULT nextval('public.position_idposition_seq'::regclass);
 D   ALTER TABLE public."position" ALTER COLUMN idposition DROP DEFAULT;
       public          postgres    false    245    244    245            Z           2604    53434    service idservice    DEFAULT     v   ALTER TABLE ONLY public.service ALTER COLUMN idservice SET DEFAULT nextval('public.service_idservice_seq'::regclass);
 @   ALTER TABLE public.service ALTER COLUMN idservice DROP DEFAULT;
       public          postgres    false    247    246    247            [           2604    53446    servicepayment idservicepayment    DEFAULT     �   ALTER TABLE ONLY public.servicepayment ALTER COLUMN idservicepayment SET DEFAULT nextval('public.servicepayment_idservicepayment_seq'::regclass);
 N   ALTER TABLE public.servicepayment ALTER COLUMN idservicepayment DROP DEFAULT;
       public          postgres    false    249    248    249            \           2604    53458    student idstudent    DEFAULT     v   ALTER TABLE ONLY public.student ALTER COLUMN idstudent SET DEFAULT nextval('public.student_idstudent_seq'::regclass);
 @   ALTER TABLE public.student ALTER COLUMN idstudent DROP DEFAULT;
       public          postgres    false    251    250    251            ]           2604    53470 !   studentactivity idstudentactivity    DEFAULT     �   ALTER TABLE ONLY public.studentactivity ALTER COLUMN idstudentactivity SET DEFAULT nextval('public.studentactivity_idstudentactivity_seq'::regclass);
 P   ALTER TABLE public.studentactivity ALTER COLUMN idstudentactivity DROP DEFAULT;
       public          postgres    false    253    252    253            ^           2604    53480    studyplan idplan    DEFAULT     t   ALTER TABLE ONLY public.studyplan ALTER COLUMN idplan SET DEFAULT nextval('public.studyplan_idplan_seq'::regclass);
 ?   ALTER TABLE public.studyplan ALTER COLUMN idplan DROP DEFAULT;
       public          postgres    false    254    255    255            _           2604    53489    subject idsubject    DEFAULT     v   ALTER TABLE ONLY public.subject ALTER COLUMN idsubject SET DEFAULT nextval('public.subject_idsubject_seq'::regclass);
 @   ALTER TABLE public.subject ALTER COLUMN idsubject DROP DEFAULT;
       public          postgres    false    257    256    257            `           2604    53500    sysdiagrams diagram_id    DEFAULT     �   ALTER TABLE ONLY public.sysdiagrams ALTER COLUMN diagram_id SET DEFAULT nextval('public.sysdiagrams_diagram_id_seq'::regclass);
 E   ALTER TABLE public.sysdiagrams ALTER COLUMN diagram_id DROP DEFAULT;
       public          postgres    false    258    259    259            a           2604    53510 %   teacherevaluation idteacherevaluation    DEFAULT     �   ALTER TABLE ONLY public.teacherevaluation ALTER COLUMN idteacherevaluation SET DEFAULT nextval('public.teacherevaluation_idteacherevaluation_seq'::regclass);
 T   ALTER TABLE public.teacherevaluation ALTER COLUMN idteacherevaluation DROP DEFAULT;
       public          postgres    false    261    260    261            Q          0    53166    academicaward 
   TABLE DATA           �   COPY public.academicaward (idacademicaward, date, nameacademicaward, description, recipients, idstudent, status, trial109) FROM stdin;
    public          postgres    false    197   4m      S          0    53178    academicdiploma 
   TABLE DATA           l   COPY public.academicdiploma (idacademicdiploma, title, date, type, status, idstudent, trial112) FROM stdin;
    public          postgres    false    199   �n      U          0    53190    activity 
   TABLE DATA           [   COPY public.activity (idactivity, activityname, description, status, trial112) FROM stdin;
    public          postgres    false    201   Oo      W          0    53201    application 
   TABLE DATA           �   COPY public.application (idapplication, applicantfirstname, applicantlastname, gender, dateofbirth, temporalid, schooloforigin, applicationdate, grade, preferredcareer, secondpreferredcareer, thirdpreferredcareer, idstudent, status, trial112) FROM stdin;
    public          postgres    false    203   Fp      Y          0    53212    candidatestudent 
   TABLE DATA           �   COPY public.candidatestudent (idcandidatestudent, contactinfo, gender, address, nationality, name, idstudent, idapplication, status, trial112) FROM stdin;
    public          postgres    false    205   �q      [          0    53224    career 
   TABLE DATA           _   COPY public.career (idcareer, careername, semester, description, status, trial112) FROM stdin;
    public          postgres    false    207   �r      ]          0    53235 
   careerplan 
   TABLE DATA           V   COPY public.careerplan (idcareerplan, idcareer, idplan, status, trial115) FROM stdin;
    public          postgres    false    209   5s      _          0    53245    class 
   TABLE DATA           g   COPY public.class (idclass, idgroup, idemployee, idsubject, idclassroom, status, trial115) FROM stdin;
    public          postgres    false    211   os      a          0    53254 	   classroom 
   TABLE DATA           ^   COPY public.classroom (idclassroom, name, roomnumber, capacity, status, trial115) FROM stdin;
    public          postgres    false    213   �s      c          0    53265 
   conference 
   TABLE DATA           x   COPY public.conference (idconference, nameconference, startdate, enddate, location, iddepartment, trial115) FROM stdin;
    public          postgres    false    215   t      e          0    53277    contract 
   TABLE DATA           j   COPY public.contract (idcontract, startdate, enddate, salary, contracttype, status, trial115) FROM stdin;
    public          postgres    false    217   u      g          0    53285    course 
   TABLE DATA           �   COPY public.course (idcourse, coursename, credits, description, enrollmentcapacity, idstudent, idemployee, trial119) FROM stdin;
    public          postgres    false    219   �u      i          0    53297    degreerequirements 
   TABLE DATA           y   COPY public.degreerequirements (iddegreerequirements, semester, tipo, status, idsubject, idcareer, trial119) FROM stdin;
    public          postgres    false    221   �v      k          0    53306 
   department 
   TABLE DATA           �   COPY public.department (iddepartment, name, description, director, foundingdate, phone, email, location, openinghour, closinghour, idemployee, status, trial119) FROM stdin;
    public          postgres    false    223   �v      m          0    53318    detailclass 
   TABLE DATA           i   COPY public.detailclass (iddetailclass, starttime, endtime, days, status, idclass, trial119) FROM stdin;
    public          postgres    false    225   hx      o          0    53327    dropout 
   TABLE DATA           ^   COPY public.dropout (iddropout, dropoutdate, reason, idstudent, status, trial119) FROM stdin;
    public          postgres    false    227   �x      q          0    53336    employee 
   TABLE DATA           �   COPY public.employee (idemployee, name, lastname, dateofbirth, gender, address, phonenumber, email, maritalstatus, hiredate, haspreviousexperiencie, status, idcontract, idposition, idapplication, trial119) FROM stdin;
    public          postgres    false    229   �y      s          0    53348    employeeevent 
   TABLE DATA           _   COPY public.employeeevent (idemployeeevent, idemployee, idevent, status, trial122) FROM stdin;
    public          postgres    false    231   �z      u          0    53358    event 
   TABLE DATA           k   COPY public.event (idevent, name, startdate, enddate, description, location, status, trial122) FROM stdin;
    public          postgres    false    233   {      w          0    53369    eventstudent 
   TABLE DATA           \   COPY public.eventstudent (ideventstudent, idevent, idstudent, status, trial122) FROM stdin;
    public          postgres    false    235   ]|      y          0    53379    externalpayment 
   TABLE DATA           �   COPY public.externalpayment (idexternalpayment, paymentamount, payee, referencenumber, paymentmethod, status, trial122) FROM stdin;
    public          postgres    false    237   �|      {          0    53390    groupp 
   TABLE DATA           X   COPY public.groupp (idgroup, groupname, numberofstudents, status, trial122) FROM stdin;
    public          postgres    false    239   P}      }          0    53398    kardex 
   TABLE DATA           c   COPY public.kardex (idkardex, grade, name, date, status, idstudent, idclass, trial125) FROM stdin;
    public          postgres    false    241   �}                0    53410    plansubject 
   TABLE DATA           Y   COPY public.plansubject (idplansubject, idplan, idsubject, status, trial125) FROM stdin;
    public          postgres    false    243   j~      �          0    53420    position 
   TABLE DATA           k   COPY public."position" (idposition, name, description, contracttype, salary, status, trial125) FROM stdin;
    public          postgres    false    245   �~      �          0    53431    service 
   TABLE DATA           �   COPY public.service (idservice, servicecost, startdate, enddate, servicedescription, servicename, idexternalpayment, status, trial125) FROM stdin;
    public          postgres    false    247   �      �          0    53443    servicepayment 
   TABLE DATA           �   COPY public.servicepayment (idservicepayment, amount, paymentdate, paymentmethod, bank, idapplication, status, idservice, trial125) FROM stdin;
    public          postgres    false    249   ��      �          0    53455    student 
   TABLE DATA           �   COPY public.student (idstudent, name, lastname, middlename, dateofbirth, gender, address, phonenumber, email, status, idplan, trial128) FROM stdin;
    public          postgres    false    251   ?�      �          0    53467    studentactivity 
   TABLE DATA           e   COPY public.studentactivity (idstudentactivity, idstudent, idactivity, status, trial128) FROM stdin;
    public          postgres    false    253   N�      �          0    53477 	   studyplan 
   TABLE DATA           S   COPY public.studyplan (idplan, description, status, idclass, trial128) FROM stdin;
    public          postgres    false    255   ��      �          0    53486    subject 
   TABLE DATA           S   COPY public.subject (idsubject, name, credits, code, status, trial128) FROM stdin;
    public          postgres    false    257   �      �          0    53497    sysdiagrams 
   TABLE DATA           d   COPY public.sysdiagrams (name, principal_id, diagram_id, version, definition, trial128) FROM stdin;
    public          postgres    false    259   x�      �          0    53507    teacherevaluation 
   TABLE DATA           |   COPY public.teacherevaluation (idteacherevaluation, date, calification, status, idstudent, idsubject, trial128) FROM stdin;
    public          postgres    false    261   ��      �           0    0 !   academicaward_idacademicaward_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.academicaward_idacademicaward_seq', 5, true);
          public          postgres    false    196            �           0    0 %   academicdiploma_idacademicdiploma_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.academicdiploma_idacademicdiploma_seq', 5, true);
          public          postgres    false    198            �           0    0    activity_idactivity_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.activity_idactivity_seq', 5, true);
          public          postgres    false    200            �           0    0    application_idapplication_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.application_idapplication_seq', 5, true);
          public          postgres    false    202            �           0    0 '   candidatestudent_idcandidatestudent_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.candidatestudent_idcandidatestudent_seq', 10, true);
          public          postgres    false    204            �           0    0    career_idcareer_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.career_idcareer_seq', 5, true);
          public          postgres    false    206            �           0    0    careerplan_idcareerplan_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.careerplan_idcareerplan_seq', 5, true);
          public          postgres    false    208            �           0    0    class_idclass_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.class_idclass_seq', 5, true);
          public          postgres    false    210            �           0    0    classroom_idclassroom_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.classroom_idclassroom_seq', 5, true);
          public          postgres    false    212            �           0    0    conference_idconference_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.conference_idconference_seq', 8, true);
          public          postgres    false    214            �           0    0    contract_idcontract_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contract_idcontract_seq', 5, true);
          public          postgres    false    216            �           0    0    course_idcourse_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.course_idcourse_seq', 5, true);
          public          postgres    false    218            �           0    0 +   degreerequirements_iddegreerequirements_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.degreerequirements_iddegreerequirements_seq', 5, true);
          public          postgres    false    220            �           0    0    department_iddepartment_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.department_iddepartment_seq', 6, true);
          public          postgres    false    222            �           0    0    detailclass_iddetailclass_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.detailclass_iddetailclass_seq', 5, true);
          public          postgres    false    224            �           0    0    dropout_iddropout_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dropout_iddropout_seq', 5, true);
          public          postgres    false    226            �           0    0    employee_idemployee_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.employee_idemployee_seq', 5, true);
          public          postgres    false    228            �           0    0 !   employeeevent_idemployeeevent_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.employeeevent_idemployeeevent_seq', 5, true);
          public          postgres    false    230            �           0    0    event_idevent_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.event_idevent_seq', 5, true);
          public          postgres    false    232            �           0    0    eventstudent_ideventstudent_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.eventstudent_ideventstudent_seq', 5, true);
          public          postgres    false    234            �           0    0 %   externalpayment_idexternalpayment_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.externalpayment_idexternalpayment_seq', 5, true);
          public          postgres    false    236            �           0    0    groupp_idgroup_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.groupp_idgroup_seq', 5, true);
          public          postgres    false    238            �           0    0    kardex_idkardex_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.kardex_idkardex_seq', 5, true);
          public          postgres    false    240            �           0    0    plansubject_idplansubject_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.plansubject_idplansubject_seq', 5, true);
          public          postgres    false    242            �           0    0    position_idposition_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.position_idposition_seq', 6, true);
          public          postgres    false    244            �           0    0    service_idservice_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.service_idservice_seq', 10, true);
          public          postgres    false    246            �           0    0 #   servicepayment_idservicepayment_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.servicepayment_idservicepayment_seq', 6, true);
          public          postgres    false    248            �           0    0    student_idstudent_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.student_idstudent_seq', 5, true);
          public          postgres    false    250            �           0    0 %   studentactivity_idstudentactivity_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.studentactivity_idstudentactivity_seq', 5, true);
          public          postgres    false    252            �           0    0    studyplan_idplan_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.studyplan_idplan_seq', 5, true);
          public          postgres    false    254            �           0    0    subject_idsubject_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subject_idsubject_seq', 5, true);
          public          postgres    false    256            �           0    0    sysdiagrams_diagram_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.sysdiagrams_diagram_id_seq', 1, false);
          public          postgres    false    258            �           0    0 )   teacherevaluation_idteacherevaluation_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.teacherevaluation_idteacherevaluation_seq', 5, true);
          public          postgres    false    260            r           2606    53240    careerplan careerplan_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.careerplan
    ADD CONSTRAINT careerplan_pk PRIMARY KEY (idcareerplan);
 B   ALTER TABLE ONLY public.careerplan DROP CONSTRAINT careerplan_pk;
       public            postgres    false    209            �           2606    53353    employeeevent employeeevent_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.employeeevent
    ADD CONSTRAINT employeeevent_pk PRIMARY KEY (idemployeeevent);
 H   ALTER TABLE ONLY public.employeeevent DROP CONSTRAINT employeeevent_pk;
       public            postgres    false    231            �           2606    53374    eventstudent eventstudent_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.eventstudent
    ADD CONSTRAINT eventstudent_pk PRIMARY KEY (ideventstudent);
 F   ALTER TABLE ONLY public.eventstudent DROP CONSTRAINT eventstudent_pk;
       public            postgres    false    235            d           2606    53174    academicaward pk_academicaward 
   CONSTRAINT     i   ALTER TABLE ONLY public.academicaward
    ADD CONSTRAINT pk_academicaward PRIMARY KEY (idacademicaward);
 H   ALTER TABLE ONLY public.academicaward DROP CONSTRAINT pk_academicaward;
       public            postgres    false    197            g           2606    53186 "   academicdiploma pk_academicdiploma 
   CONSTRAINT     o   ALTER TABLE ONLY public.academicdiploma
    ADD CONSTRAINT pk_academicdiploma PRIMARY KEY (idacademicdiploma);
 L   ALTER TABLE ONLY public.academicdiploma DROP CONSTRAINT pk_academicdiploma;
       public            postgres    false    199            i           2606    53198    activity pk_activity 
   CONSTRAINT     Z   ALTER TABLE ONLY public.activity
    ADD CONSTRAINT pk_activity PRIMARY KEY (idactivity);
 >   ALTER TABLE ONLY public.activity DROP CONSTRAINT pk_activity;
       public            postgres    false    201            k           2606    53209    application pk_application 
   CONSTRAINT     c   ALTER TABLE ONLY public.application
    ADD CONSTRAINT pk_application PRIMARY KEY (idapplication);
 D   ALTER TABLE ONLY public.application DROP CONSTRAINT pk_application;
       public            postgres    false    203            n           2606    53220 $   candidatestudent pk_candidatestudent 
   CONSTRAINT     r   ALTER TABLE ONLY public.candidatestudent
    ADD CONSTRAINT pk_candidatestudent PRIMARY KEY (idcandidatestudent);
 N   ALTER TABLE ONLY public.candidatestudent DROP CONSTRAINT pk_candidatestudent;
       public            postgres    false    205            p           2606    53232    career pk_career 
   CONSTRAINT     T   ALTER TABLE ONLY public.career
    ADD CONSTRAINT pk_career PRIMARY KEY (idcareer);
 :   ALTER TABLE ONLY public.career DROP CONSTRAINT pk_career;
       public            postgres    false    207            w           2606    53250    class pk_class 
   CONSTRAINT     Q   ALTER TABLE ONLY public.class
    ADD CONSTRAINT pk_class PRIMARY KEY (idclass);
 8   ALTER TABLE ONLY public.class DROP CONSTRAINT pk_class;
       public            postgres    false    211            y           2606    53262    classroom pk_classroom 
   CONSTRAINT     ]   ALTER TABLE ONLY public.classroom
    ADD CONSTRAINT pk_classroom PRIMARY KEY (idclassroom);
 @   ALTER TABLE ONLY public.classroom DROP CONSTRAINT pk_classroom;
       public            postgres    false    213            |           2606    53273    conference pk_conference 
   CONSTRAINT     `   ALTER TABLE ONLY public.conference
    ADD CONSTRAINT pk_conference PRIMARY KEY (idconference);
 B   ALTER TABLE ONLY public.conference DROP CONSTRAINT pk_conference;
       public            postgres    false    215            ~           2606    53282    contract pk_contract 
   CONSTRAINT     Z   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT pk_contract PRIMARY KEY (idcontract);
 >   ALTER TABLE ONLY public.contract DROP CONSTRAINT pk_contract;
       public            postgres    false    217            �           2606    53293    course pk_course 
   CONSTRAINT     T   ALTER TABLE ONLY public.course
    ADD CONSTRAINT pk_course PRIMARY KEY (idcourse);
 :   ALTER TABLE ONLY public.course DROP CONSTRAINT pk_course;
       public            postgres    false    219            �           2606    53302 (   degreerequirements pk_degreerequirements 
   CONSTRAINT     x   ALTER TABLE ONLY public.degreerequirements
    ADD CONSTRAINT pk_degreerequirements PRIMARY KEY (iddegreerequirements);
 R   ALTER TABLE ONLY public.degreerequirements DROP CONSTRAINT pk_degreerequirements;
       public            postgres    false    221            �           2606    53314    department pk_department 
   CONSTRAINT     `   ALTER TABLE ONLY public.department
    ADD CONSTRAINT pk_department PRIMARY KEY (iddepartment);
 B   ALTER TABLE ONLY public.department DROP CONSTRAINT pk_department;
       public            postgres    false    223            �           2606    53323    detailclass pk_detailclass 
   CONSTRAINT     c   ALTER TABLE ONLY public.detailclass
    ADD CONSTRAINT pk_detailclass PRIMARY KEY (iddetailclass);
 D   ALTER TABLE ONLY public.detailclass DROP CONSTRAINT pk_detailclass;
       public            postgres    false    225            �           2606    53332    dropout pk_dropout 
   CONSTRAINT     W   ALTER TABLE ONLY public.dropout
    ADD CONSTRAINT pk_dropout PRIMARY KEY (iddropout);
 <   ALTER TABLE ONLY public.dropout DROP CONSTRAINT pk_dropout;
       public            postgres    false    227            �           2606    53344    employee pk_employee 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT pk_employee PRIMARY KEY (idemployee);
 >   ALTER TABLE ONLY public.employee DROP CONSTRAINT pk_employee;
       public            postgres    false    229            �           2606    53366    event pk_event 
   CONSTRAINT     Q   ALTER TABLE ONLY public.event
    ADD CONSTRAINT pk_event PRIMARY KEY (idevent);
 8   ALTER TABLE ONLY public.event DROP CONSTRAINT pk_event;
       public            postgres    false    233            �           2606    53387 "   externalpayment pk_externalpayment 
   CONSTRAINT     o   ALTER TABLE ONLY public.externalpayment
    ADD CONSTRAINT pk_externalpayment PRIMARY KEY (idexternalpayment);
 L   ALTER TABLE ONLY public.externalpayment DROP CONSTRAINT pk_externalpayment;
       public            postgres    false    237            �           2606    53395    groupp pk_groupp 
   CONSTRAINT     S   ALTER TABLE ONLY public.groupp
    ADD CONSTRAINT pk_groupp PRIMARY KEY (idgroup);
 :   ALTER TABLE ONLY public.groupp DROP CONSTRAINT pk_groupp;
       public            postgres    false    239            �           2606    53406    kardex pk_kardex 
   CONSTRAINT     T   ALTER TABLE ONLY public.kardex
    ADD CONSTRAINT pk_kardex PRIMARY KEY (idkardex);
 :   ALTER TABLE ONLY public.kardex DROP CONSTRAINT pk_kardex;
       public            postgres    false    241            �           2606    53428    position pk_position 
   CONSTRAINT     \   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT pk_position PRIMARY KEY (idposition);
 @   ALTER TABLE ONLY public."position" DROP CONSTRAINT pk_position;
       public            postgres    false    245            �           2606    53439    service pk_service 
   CONSTRAINT     W   ALTER TABLE ONLY public.service
    ADD CONSTRAINT pk_service PRIMARY KEY (idservice);
 <   ALTER TABLE ONLY public.service DROP CONSTRAINT pk_service;
       public            postgres    false    247            �           2606    53451     servicepayment pk_servicepayment 
   CONSTRAINT     l   ALTER TABLE ONLY public.servicepayment
    ADD CONSTRAINT pk_servicepayment PRIMARY KEY (idservicepayment);
 J   ALTER TABLE ONLY public.servicepayment DROP CONSTRAINT pk_servicepayment;
       public            postgres    false    249            �           2606    53463    student pk_student 
   CONSTRAINT     W   ALTER TABLE ONLY public.student
    ADD CONSTRAINT pk_student PRIMARY KEY (idstudent);
 <   ALTER TABLE ONLY public.student DROP CONSTRAINT pk_student;
       public            postgres    false    251            �           2606    53482    studyplan pk_studyplan 
   CONSTRAINT     X   ALTER TABLE ONLY public.studyplan
    ADD CONSTRAINT pk_studyplan PRIMARY KEY (idplan);
 @   ALTER TABLE ONLY public.studyplan DROP CONSTRAINT pk_studyplan;
       public            postgres    false    255            �           2606    53494    subject pk_subject 
   CONSTRAINT     W   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT pk_subject PRIMARY KEY (idsubject);
 <   ALTER TABLE ONLY public.subject DROP CONSTRAINT pk_subject;
       public            postgres    false    257            �           2606    53512 &   teacherevaluation pk_teacherevaluation 
   CONSTRAINT     u   ALTER TABLE ONLY public.teacherevaluation
    ADD CONSTRAINT pk_teacherevaluation PRIMARY KEY (idteacherevaluation);
 P   ALTER TABLE ONLY public.teacherevaluation DROP CONSTRAINT pk_teacherevaluation;
       public            postgres    false    261            �           2606    53415    plansubject plansubject_pk 
   CONSTRAINT     c   ALTER TABLE ONLY public.plansubject
    ADD CONSTRAINT plansubject_pk PRIMARY KEY (idplansubject);
 D   ALTER TABLE ONLY public.plansubject DROP CONSTRAINT plansubject_pk;
       public            postgres    false    243            �           2606    53472 "   studentactivity studentactivity_pk 
   CONSTRAINT     o   ALTER TABLE ONLY public.studentactivity
    ADD CONSTRAINT studentactivity_pk PRIMARY KEY (idstudentactivity);
 L   ALTER TABLE ONLY public.studentactivity DROP CONSTRAINT studentactivity_pk;
       public            postgres    false    253            �           2606    53502    sysdiagrams sysdiagrams_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.sysdiagrams
    ADD CONSTRAINT sysdiagrams_pk PRIMARY KEY (diagram_id);
 D   ALTER TABLE ONLY public.sysdiagrams DROP CONSTRAINT sysdiagrams_pk;
       public            postgres    false    259            b           1259    53175    fk_academicawardstudent    INDEX     V   CREATE INDEX fk_academicawardstudent ON public.academicaward USING btree (idstudent);
 +   DROP INDEX public.fk_academicawardstudent;
       public            postgres    false    197            e           1259    53187    fk_academicdiplomastudent    INDEX     Z   CREATE INDEX fk_academicdiplomastudent ON public.academicdiploma USING btree (idstudent);
 -   DROP INDEX public.fk_academicdiplomastudent;
       public            postgres    false    199            l           1259    53221    fk_candidatestudentapplication    INDEX     d   CREATE INDEX fk_candidatestudentapplication ON public.candidatestudent USING btree (idapplication);
 2   DROP INDEX public.fk_candidatestudentapplication;
       public            postgres    false    205            s           1259    53242    fk_careerplancareer    INDEX     N   CREATE INDEX fk_careerplancareer ON public.careerplan USING btree (idcareer);
 '   DROP INDEX public.fk_careerplancareer;
       public            postgres    false    209            u           1259    53251    fk_classgroup    INDEX     B   CREATE INDEX fk_classgroup ON public.class USING btree (idgroup);
 !   DROP INDEX public.fk_classgroup;
       public            postgres    false    211            z           1259    53274    fk_conferencedepartment    INDEX     V   CREATE INDEX fk_conferencedepartment ON public.conference USING btree (iddepartment);
 +   DROP INDEX public.fk_conferencedepartment;
       public            postgres    false    215                       1259    53294    fk_coursestudent    INDEX     H   CREATE INDEX fk_coursestudent ON public.course USING btree (idstudent);
 $   DROP INDEX public.fk_coursestudent;
       public            postgres    false    219            �           1259    53303    fk_degreerequirementscareer    INDEX     ^   CREATE INDEX fk_degreerequirementscareer ON public.degreerequirements USING btree (idcareer);
 /   DROP INDEX public.fk_degreerequirementscareer;
       public            postgres    false    221            �           1259    53315    fk_departmentemployee    INDEX     R   CREATE INDEX fk_departmentemployee ON public.department USING btree (idemployee);
 )   DROP INDEX public.fk_departmentemployee;
       public            postgres    false    223            �           1259    53324    fk_detailclassclass    INDEX     N   CREATE INDEX fk_detailclassclass ON public.detailclass USING btree (idclass);
 '   DROP INDEX public.fk_detailclassclass;
       public            postgres    false    225            �           1259    53333    fk_dropoutnstudent    INDEX     K   CREATE INDEX fk_dropoutnstudent ON public.dropout USING btree (idstudent);
 &   DROP INDEX public.fk_dropoutnstudent;
       public            postgres    false    227            �           1259    53345    fk_employeeapplication    INDEX     T   CREATE INDEX fk_employeeapplication ON public.employee USING btree (idapplication);
 *   DROP INDEX public.fk_employeeapplication;
       public            postgres    false    229            �           1259    53355    fk_employeeeventevent    INDEX     R   CREATE INDEX fk_employeeeventevent ON public.employeeevent USING btree (idevent);
 )   DROP INDEX public.fk_employeeeventevent;
       public            postgres    false    231            �           1259    53376    fk_eventstudentstudent    INDEX     T   CREATE INDEX fk_eventstudentstudent ON public.eventstudent USING btree (idstudent);
 *   DROP INDEX public.fk_eventstudentstudent;
       public            postgres    false    235            �           1259    53407    fk_kardexclass    INDEX     D   CREATE INDEX fk_kardexclass ON public.kardex USING btree (idclass);
 "   DROP INDEX public.fk_kardexclass;
       public            postgres    false    241            �           1259    53417    fk_plansubjectplan    INDEX     L   CREATE INDEX fk_plansubjectplan ON public.plansubject USING btree (idplan);
 &   DROP INDEX public.fk_plansubjectplan;
       public            postgres    false    243            �           1259    53440    fk_serviceexternalpayment    INDEX     Z   CREATE INDEX fk_serviceexternalpayment ON public.service USING btree (idexternalpayment);
 -   DROP INDEX public.fk_serviceexternalpayment;
       public            postgres    false    247            �           1259    53452    fk_servicepaymentservice    INDEX     X   CREATE INDEX fk_servicepaymentservice ON public.servicepayment USING btree (idservice);
 ,   DROP INDEX public.fk_servicepaymentservice;
       public            postgres    false    249            �           1259    53474    fk_studentactivityactivity    INDEX     \   CREATE INDEX fk_studentactivityactivity ON public.studentactivity USING btree (idactivity);
 .   DROP INDEX public.fk_studentactivityactivity;
       public            postgres    false    253            �           1259    53464    fk_studentstudyplan    INDEX     I   CREATE INDEX fk_studentstudyplan ON public.student USING btree (idplan);
 '   DROP INDEX public.fk_studentstudyplan;
       public            postgres    false    251            �           1259    53483    fk_studyplanclass    INDEX     J   CREATE INDEX fk_studyplanclass ON public.studyplan USING btree (idclass);
 %   DROP INDEX public.fk_studyplanclass;
       public            postgres    false    255            �           1259    53513    fk_teacherevaluationsubject    INDEX     ^   CREATE INDEX fk_teacherevaluationsubject ON public.teacherevaluation USING btree (idsubject);
 /   DROP INDEX public.fk_teacherevaluationsubject;
       public            postgres    false    261            �           1259    53504    idx_diagram_id    INDEX     L   CREATE INDEX idx_diagram_id ON public.sysdiagrams USING btree (diagram_id);
 "   DROP INDEX public.idx_diagram_id;
       public            postgres    false    259            t           1259    53241    idx_idcareerplan    INDEX     O   CREATE INDEX idx_idcareerplan ON public.careerplan USING btree (idcareerplan);
 $   DROP INDEX public.idx_idcareerplan;
       public            postgres    false    209            �           1259    53354    idx_idemployeeevent    INDEX     X   CREATE INDEX idx_idemployeeevent ON public.employeeevent USING btree (idemployeeevent);
 '   DROP INDEX public.idx_idemployeeevent;
       public            postgres    false    231            �           1259    53375    idx_ideventstudent    INDEX     U   CREATE INDEX idx_ideventstudent ON public.eventstudent USING btree (ideventstudent);
 &   DROP INDEX public.idx_ideventstudent;
       public            postgres    false    235            �           1259    53416    idx_idplansubject    INDEX     R   CREATE INDEX idx_idplansubject ON public.plansubject USING btree (idplansubject);
 %   DROP INDEX public.idx_idplansubject;
       public            postgres    false    243            �           1259    53473    idx_idstudentactivity    INDEX     ^   CREATE INDEX idx_idstudentactivity ON public.studentactivity USING btree (idstudentactivity);
 )   DROP INDEX public.idx_idstudentactivity;
       public            postgres    false    253            �           1259    53503    uk_principal_name    INDEX     j   CREATE UNIQUE INDEX uk_principal_name ON public.sysdiagrams USING btree (diagram_id, principal_id, name);
 %   DROP INDEX public.uk_principal_name;
       public            postgres    false    259    259    259            �           2606    53514 %   academicaward fk_academicawardstudent    FK CONSTRAINT     �   ALTER TABLE ONLY public.academicaward
    ADD CONSTRAINT fk_academicawardstudent FOREIGN KEY (idstudent) REFERENCES public.student(idstudent) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.academicaward DROP CONSTRAINT fk_academicawardstudent;
       public          postgres    false    2992    251    197            �           2606    53519 )   academicdiploma fk_academicdiplomastudent    FK CONSTRAINT     �   ALTER TABLE ONLY public.academicdiploma
    ADD CONSTRAINT fk_academicdiplomastudent FOREIGN KEY (idstudent) REFERENCES public.student(idstudent) ON UPDATE RESTRICT ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.academicdiploma DROP CONSTRAINT fk_academicdiplomastudent;
       public          postgres    false    251    199    2992            �           2606    53524 /   candidatestudent fk_candidatestudentapplication    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidatestudent
    ADD CONSTRAINT fk_candidatestudentapplication FOREIGN KEY (idapplication) REFERENCES public.application(idapplication) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.candidatestudent DROP CONSTRAINT fk_candidatestudentapplication;
       public          postgres    false    2923    203    205            �           2606    53529    careerplan fk_careerplancareer    FK CONSTRAINT     �   ALTER TABLE ONLY public.careerplan
    ADD CONSTRAINT fk_careerplancareer FOREIGN KEY (idcareer) REFERENCES public.career(idcareer) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.careerplan DROP CONSTRAINT fk_careerplancareer;
       public          postgres    false    209    207    2928            �           2606    53534    class fk_classgroup    FK CONSTRAINT     �   ALTER TABLE ONLY public.class
    ADD CONSTRAINT fk_classgroup FOREIGN KEY (idgroup) REFERENCES public.groupp(idgroup) ON UPDATE RESTRICT ON DELETE RESTRICT;
 =   ALTER TABLE ONLY public.class DROP CONSTRAINT fk_classgroup;
       public          postgres    false    211    239    2974            �           2606    53539 "   conference fk_conferencedepartment    FK CONSTRAINT     �   ALTER TABLE ONLY public.conference
    ADD CONSTRAINT fk_conferencedepartment FOREIGN KEY (iddepartment) REFERENCES public.department(iddepartment) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.conference DROP CONSTRAINT fk_conferencedepartment;
       public          postgres    false    223    215    2951            �           2606    53544    course fk_coursestudent    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT fk_coursestudent FOREIGN KEY (idstudent) REFERENCES public.student(idstudent) ON UPDATE RESTRICT ON DELETE RESTRICT;
 A   ALTER TABLE ONLY public.course DROP CONSTRAINT fk_coursestudent;
       public          postgres    false    251    219    2992            �           2606    53549 .   degreerequirements fk_degreerequirementscareer    FK CONSTRAINT     �   ALTER TABLE ONLY public.degreerequirements
    ADD CONSTRAINT fk_degreerequirementscareer FOREIGN KEY (idcareer) REFERENCES public.career(idcareer) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.degreerequirements DROP CONSTRAINT fk_degreerequirementscareer;
       public          postgres    false    221    207    2928            �           2606    53554     department fk_departmentemployee    FK CONSTRAINT     �   ALTER TABLE ONLY public.department
    ADD CONSTRAINT fk_departmentemployee FOREIGN KEY (idemployee) REFERENCES public.employee(idemployee) ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.department DROP CONSTRAINT fk_departmentemployee;
       public          postgres    false    223    229    2960            �           2606    53559    detailclass fk_detailclassclass    FK CONSTRAINT     �   ALTER TABLE ONLY public.detailclass
    ADD CONSTRAINT fk_detailclassclass FOREIGN KEY (idclass) REFERENCES public.class(idclass) ON UPDATE RESTRICT ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.detailclass DROP CONSTRAINT fk_detailclassclass;
       public          postgres    false    225    2935    211            �           2606    53564    dropout fk_dropoutnstudent    FK CONSTRAINT     �   ALTER TABLE ONLY public.dropout
    ADD CONSTRAINT fk_dropoutnstudent FOREIGN KEY (idstudent) REFERENCES public.student(idstudent) ON UPDATE RESTRICT ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.dropout DROP CONSTRAINT fk_dropoutnstudent;
       public          postgres    false    251    2992    227            �           2606    53569    employee fk_employeeapplication    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT fk_employeeapplication FOREIGN KEY (idapplication) REFERENCES public.application(idapplication) ON UPDATE RESTRICT ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.employee DROP CONSTRAINT fk_employeeapplication;
       public          postgres    false    229    203    2923            �           2606    53574 #   employeeevent fk_employeeeventevent    FK CONSTRAINT     �   ALTER TABLE ONLY public.employeeevent
    ADD CONSTRAINT fk_employeeeventevent FOREIGN KEY (idevent) REFERENCES public.event(idevent) ON UPDATE RESTRICT ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.employeeevent DROP CONSTRAINT fk_employeeeventevent;
       public          postgres    false    233    231    2966            �           2606    53579 #   eventstudent fk_eventstudentstudent    FK CONSTRAINT     �   ALTER TABLE ONLY public.eventstudent
    ADD CONSTRAINT fk_eventstudentstudent FOREIGN KEY (idstudent) REFERENCES public.student(idstudent) ON UPDATE RESTRICT ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.eventstudent DROP CONSTRAINT fk_eventstudentstudent;
       public          postgres    false    235    2992    251            �           2606    53584    kardex fk_kardexclass    FK CONSTRAINT     �   ALTER TABLE ONLY public.kardex
    ADD CONSTRAINT fk_kardexclass FOREIGN KEY (idclass) REFERENCES public.class(idclass) ON UPDATE RESTRICT ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY public.kardex DROP CONSTRAINT fk_kardexclass;
       public          postgres    false    241    211    2935            �           2606    53589    plansubject fk_plansubjectplan    FK CONSTRAINT     �   ALTER TABLE ONLY public.plansubject
    ADD CONSTRAINT fk_plansubjectplan FOREIGN KEY (idplan) REFERENCES public.studyplan(idplan) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.plansubject DROP CONSTRAINT fk_plansubjectplan;
       public          postgres    false    2999    243    255            �           2606    53594 !   service fk_serviceexternalpayment    FK CONSTRAINT     �   ALTER TABLE ONLY public.service
    ADD CONSTRAINT fk_serviceexternalpayment FOREIGN KEY (idexternalpayment) REFERENCES public.externalpayment(idexternalpayment) ON UPDATE RESTRICT ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.service DROP CONSTRAINT fk_serviceexternalpayment;
       public          postgres    false    2972    247    237            �           2606    53599 '   servicepayment fk_servicepaymentservice    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicepayment
    ADD CONSTRAINT fk_servicepaymentservice FOREIGN KEY (idservice) REFERENCES public.service(idservice) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.servicepayment DROP CONSTRAINT fk_servicepaymentservice;
       public          postgres    false    2986    247    249            �           2606    53609 *   studentactivity fk_studentactivityactivity    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentactivity
    ADD CONSTRAINT fk_studentactivityactivity FOREIGN KEY (idactivity) REFERENCES public.activity(idactivity) ON UPDATE RESTRICT ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.studentactivity DROP CONSTRAINT fk_studentactivityactivity;
       public          postgres    false    2921    253    201            �           2606    53604    student fk_studentstudyplan    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT fk_studentstudyplan FOREIGN KEY (idplan) REFERENCES public.studyplan(idplan) ON UPDATE RESTRICT ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.student DROP CONSTRAINT fk_studentstudyplan;
       public          postgres    false    251    255    2999            �           2606    53614    studyplan fk_studyplanclass    FK CONSTRAINT     �   ALTER TABLE ONLY public.studyplan
    ADD CONSTRAINT fk_studyplanclass FOREIGN KEY (idclass) REFERENCES public.class(idclass) ON UPDATE RESTRICT ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.studyplan DROP CONSTRAINT fk_studyplanclass;
       public          postgres    false    2935    255    211            �           2606    53619 -   teacherevaluation fk_teacherevaluationsubject    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacherevaluation
    ADD CONSTRAINT fk_teacherevaluationsubject FOREIGN KEY (idsubject) REFERENCES public.subject(idsubject) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.teacherevaluation DROP CONSTRAINT fk_teacherevaluationsubject;
       public          postgres    false    257    261    3001            Q   >  x�M�Mn�0FדS�R� 
,��J�Ħ�d�c��CJO_'���%��{ߌs(��L�<�3X}KR��$d��j�g�`>[S�'c���y�k�g�Ȇ�V�'�ӓ7�h\�2�'EiV��� ]	���3�ӕZ��$�Y�O�Q(�y6Z("�.�TPM�k�7PL�2Jʴ�`'ye-�⁵&k��c�Ľoh�N6ƨp��S�ak�d=�#8����g1|�����ɺ�;�vsy�fPT��zSD�����
#��U��Kqe�)���UZT���匥�cM������7��#Ȏ��A�HlX6�.�4T���%I�_���
      S   �   x�e�K�0@���@M[���q�+u禁Z&������	D��I�{3#H��N��S����m4K�nx���<#�˜񒉒<l���M*j �L�D��a����!t��R1�ٳe��y$zrrUa좥N��V� BD8;)vLrr��9��j�#�=X31{&��/,��jp�3��>��/�%��M�e_��a�      U   �   x�E�KR1DמS�P|@e�P,B���c��Gv��ӣ����Zmߺ�,�:���}D�7���t���)�
��-�W�/p��ݍ{�ܺd�
�_�s�	jW�����^(�����4��sǽ[�á1�k�����+��W�v���6}�a��^�x�F��U��b������vi.:�h��`3��J�ݫl=�7���E)P9u�_���^�y=�^�z�      W   P  x�u��n�0���)xW��$C M#!�&cױ�T�#�i��ׁ4Ce7������i5FA�Ҍ��28V�k�x;l�� [c�x:xB'��������l�@���R7�����/.����S���£�@�9F�B+8���^�B9᫉�f�;���or4�i��ZƲR'��yC$�f>�����Q1%��0:a���f��SvJz�Rt�\���J�V�A,�5���n�B|��̲qn>!)�3dq7������w!/cx��ܢ��ѰŮ�kkN��e�V�rk�o�!�%��M�l-��7��U	���Uy�Z\w<1ߟ�(�iۣ�      Y   �   x����j!������:�Y%1�]h�Y�d#I4�Y��{]8�̈́��+�����2�^�ͨ���x����
O��z�\�Uݴ]��h��2�H�����d�N{Nap.����.L��,}�6uU
���᧺��>#� (��&��E`����x2V��	%%
}���ôĤ��q�zT>7�q���s}c�DI5����CfPS��.���ՐV      [   �   x�uϻ�0����|jy��A�H0�T���Z��п��R��u]�Q��0ڋ'd�p ��{�V���/Y�լ��J����Ĥ)���a���O�8qx����b��2��Y'�I/a���Ĥ�h�����k3���2Ƽ ��[�      ]   *   x�3�4B�.#N��9A�2�A˔A�=... ��       _   *   x�3�4�B�.#N�9a�3�AϔA�=... d�	x      a   O   x�%ʹ�@A{6
"@s��� �$t�{H;N�����mp���w�����#�����D'���*:��]��=�u      c   �   x�u��j�0���PY�jn��@!=%�^L�MD�d$;4o_9�&��@���=N���ތ�H�0_�
A�yEύ�(��g�س=06lG��
�Y	[_�����.��O�R�%=H#�Q�E��*�`=c9�r��>�̀��ܕP��W��;2��J쿻�<�kh�1��{�7kݹ��o?����*�#������+qD�{�y�'ڟ���z.B����Y��B�OY��ht�      e   }   x�m�1�@F���|�]l����.E:�B9����p�޽DH��!��Q���mhx�3��2�4\e��ޱ��Ӹ֯�Ch=;���-!Ft�f~��q��x����k��q��d/���0�.f      g   �   x�U�KN�0D��S�	P&��	i���%�t2I;r۠�=�a�G��ݯ�e��Scv���!�[N�w��4�y�+q��`����H�`j8yؔ#���ėph�Oy����?����j�`���D��މ��.�[������g|�q�V�4�m��|��"y�9E~��$�n�6@ц�P��SC�q<��N��IK�����|�L�'~�;]�j0�wƘ/Ew�      i   B   x�3�4�t�/J�4 29C����kNjrIfH�,h�����&@$U&`AS�$T�)X F��� �f      k   ~  x�}��J�0������!mz��J��B�ܸ��i'�&C�*��&���P���8��8����2�hȩ�*$�p�w�z�I���bM�"Uxa�/l?�-̚�:џ!��F4v�	K��ؔ*[㥿Ŏ�v)����j����Z� �l)u�E����Q�R���^�\�/�'	�R8*�����H�ځ�OF7k���jqYf͢8�rS�Yʒ�NK�]P;a������m[����n4>�-�yeǕ3�����EH)xg�}w9�|�BĒw�h�e�7�l�f��.d2-U���~�t����(q����{�%�!�R_*0��ᑛw�iK����;�3�Sy��a�;:�/����������j��iX�      m   v   x�3�4��20 "NK+c0�7?/%�RG!<5%/��t+�Ҝ���!\F��P=��P=!�P�!�E��F@�Ɯ��0�&���5�5�44��5�c�	P�)¹@7t�)PO� 5;;�      o   �   x�-�;� �z9 Z~QN`E�R�L�-��D�bq���)�fF�Ac�=<c�C�5�4 ����)��(�,�^j;2�� v��B�R�Hb>"��MpSa��F}h�+�ʍ���P�BK�R:��;��5�~��E���3      q   4  x�m��n�0Dg�+�D�N�h����.J,4Jm�P����Jdn�����q?�*z�����5��RYt.���$�^,�������\�.N�	���,YmQܖ�Y�"X���f
�=Z�!M� �,^ݗ �f�����<m�2}��\J���Fۅ&��ի��֧S�r��$!m[��:�oa��AH�b�l�1�.4-�2�W<Oa���;������8Z,������(/3��^q�j���3���!��Ώ��dj)�������|�9ԕS�t���X�H(�?R�ի������      s   *   x�3�4B�.#N��9A�2�A˔A�=... ��       u   >  x�U��n!���S�l�]��fL�Ӥ5���Y� j}��&�����?��:4��UM�UҦd�nFi<w��fmn̑k($�?F�e,⋎P�)*�i��K;@�Xsw���>�'%���Y���M���f��X��J���z�q\���[ۏ~5Yp��`ɕ�Ķ�"�>D�j����� g$6�1"���t���H���p+��h�L�G�,�u�:��e� �>�E����5]<d#c���vZ��D"oǰ����d��m��� �&2�K�bՃU7��f�!�Yp�F������?�^ct����(�_�G��      w   *   x�3�4B�.#N��9A�2�A˔A�=... ��       y   �   x��K�0����*���c*��Ą C'W�i#������v��?�����iK[�`�N\d��ƫ�l�A?��,B��^��H������8'�wW~���:��3���EG�v}*�9�*d���;m�k֨�,�\uB�ՋyhT3=z�K�x��F��G%x;B��&6�      {   @   x�3�t/�/-Pp�42�4��2�
8q���ΜFF`����X�*��i1#F��� ��R      }   �   x�=�1�0F�˯�^"��uk�M�HF�X[��$��{�Zލy�|*8���r�&y���P+�$���|��/���L1�w$yL)|�(tR��.�a��P)�ߩ)q ws��Ӄڼ�V��\S��4�7��O�&/���_)��i��J�U�{�r?޹B���Ӧq�2�j����u#���
@7         *   x�3�4B�.#N��9A�2�A˔A�=... ��       �   �   x�M��N�0���~P
��:��.�&ʑ����"M��-OOX��ɇX��\�.8�N`�[�P0�R�@�����3'hyb"��btbI%���sW*�]c�\��=�wV�=v�����pp��������e+k"�^��@I���sp�gܓ��x执q(��9��\�dU&��ğ��,�ZR'�U,���g�x�+�
l�/��6�AkxJOb��,�/�m�"�I�Hm������_����P8v�      �   �   x�M��n�0���S���@�7�I;p*G.��X�ʭ��oO�����?��*!@	�-�,e�H�g��M�v���هi	N�h^~��� R	�0q�� jGk��0��[��w�
�P�VC�	U)S�}�?t�0���T�ռ,���#���Ú��{b�sͿhi��fطnM¾��.b��Rd�1?M� O=���o�w�Fg��C��t��39�Tq�uS��kr�      �   �   x�E�A�0���\���_���^�K7M��hH,����X��d^&#�Dg�-{����
1O��r�:0F��B��b�c��!�7'��j�;sV��c��zI��Nu�ڃ����f�ꤪ�>ꭨ��㕊���Ƙo-l      �   �   x�U�Kn�0���al����,MH�P���N�`	��+@���^'3��t��)t#���%DƄaҠ�T:m����3�e%p�s��s��=����Ɏ��/��2L(�J<����~F�*��dZI����~�)�4���M�}�F"����hJ��G�u��t���mTMj����_���Ϩ#�3)�R�Q
�\k�h����	oc�3������~
?#���]0�i�����\E���K�6�!�'I�d_k      �   *   x�3�4B�.#N��9A�2�A˔A�=... ��       �   O   x�3�.)M�T(�I�SH�/Rp�I,.V0�4�4��2�.m�6Jc�6J�M�K� �M�ҦإM�Ҧ@�=... ��,�      �   �   x�-�K
�  ��S��_PB���tS�FD��$E�"�oZ���1L���]��t5�Q
C8T�eK$Ԡ�\�ۖ�^|j��~u-:-�,ѯ�w̡��ز'���md���s8��QbV�+^!_p�&      �      x������ � �      �   D   x�-ʱ�@����,8���ƀ6�*j0=V]�2���f_vp��X��ќ�	g�W�GD>L6�     