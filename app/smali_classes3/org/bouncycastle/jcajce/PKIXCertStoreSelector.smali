.class public Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$1;,
        Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;,
        Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/Certificate;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Selector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method private constructor <init>(Ljava/security/cert/CertSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/cert/CertSelector;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    return-object v0
.end method

.method public static getCertificates(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;-><init>(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-object v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method
