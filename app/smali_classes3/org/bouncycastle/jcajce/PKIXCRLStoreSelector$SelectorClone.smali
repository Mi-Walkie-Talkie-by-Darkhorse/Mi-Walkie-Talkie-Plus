.class Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CRLSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;->access$700(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;->access$700(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setDateAndTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMinCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/CRL;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    goto :goto_0
.end method
