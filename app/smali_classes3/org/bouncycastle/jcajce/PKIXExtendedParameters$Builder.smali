.class public Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Ljava/security/cert/PKIXParameters;

.field private final date:Ljava/util/Date;

.field private extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private revocationEnabled:Z

.field private targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    iput v1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    iput v1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$000(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$100(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$200(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$300(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$400(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$500(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$600(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$700(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->access$800(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$1000(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return v0
.end method

.method static synthetic access$2000(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCertificateStore(Lorg/bouncycastle/jcajce/PKIXCertStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNamedCRLStore(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addNamedCertificateStore(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCertStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lorg/bouncycastle/jcajce/PKIXExtendedParameters$1;)V

    return-object v0
.end method

.method public setRevocationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return-void
.end method

.method public setTargetConstraints(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method public setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method public setTrustAnchors(Ljava/util/Set;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method public setUseDeltasEnabled(Z)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return-object p0
.end method

.method public setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return-object p0
.end method
