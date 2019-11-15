.class public interface abstract Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
.super Ljava/lang/Object;


# static fields
.field public static final DH_DEFAULT_PARAMS:Ljava/lang/String; = "DhDefaultParams"

.field public static final EC_IMPLICITLY_CA:Ljava/lang/String; = "ecImplicitlyCa"

.field public static final THREAD_LOCAL_DH_DEFAULT_PARAMS:Ljava/lang/String; = "threadLocalDhDefaultParams"

.field public static final THREAD_LOCAL_EC_IMPLICITLY_CA:Ljava/lang/String; = "threadLocalEcImplicitlyCa"


# virtual methods
.method public abstract addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
.end method

.method public abstract addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
.end method

.method public abstract hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method
