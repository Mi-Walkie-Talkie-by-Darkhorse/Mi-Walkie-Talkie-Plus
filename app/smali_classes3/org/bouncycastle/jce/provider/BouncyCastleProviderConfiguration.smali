.class Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_DH_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile dhDefaultParams:Ljava/lang/Object;

.field private dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile ecImplicitCaParams:Lorg/bouncycastle/jce/spec/ECParameterSpec;

.field private ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    :cond_0
    instance-of v1, v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ne v1, p1, :cond_3

    :goto_0
    return-object v0

    :cond_1
    instance-of v1, v0, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_3

    check-cast v0, [Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, [Ljavax/crypto/spec/DHParameterSpec;

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_0
.end method

.method setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const-string v1, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v0, :cond_1

    if-nez p2, :cond_3

    :cond_1
    check-cast p2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    :goto_0
    if-nez p2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object p2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v1, "ecImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_6

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_6
    instance-of v0, p2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v0, :cond_7

    if-nez p2, :cond_8

    :cond_7
    check-cast p2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_1

    :cond_8
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_1

    :cond_9
    const-string v1, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_a

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_a
    instance-of v0, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_b

    instance-of v0, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_b

    if-nez p2, :cond_c

    :cond_b
    if-nez p2, :cond_d

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a valid DHParameterSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_e
    const-string v1, "DhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_f

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_f
    instance-of v0, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_10

    instance-of v0, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_10

    if-nez p2, :cond_11

    :cond_10
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    goto :goto_1

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
