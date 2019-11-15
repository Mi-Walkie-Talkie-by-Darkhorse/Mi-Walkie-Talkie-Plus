.class public Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

.field private excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return v0
.end method


# virtual methods
.method public addExcludedCerts(Ljava/util/Set;)Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$1;)V

    return-object v0
.end method

.method public setMaxPathLength(I)Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .locals 2

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return-object p0
.end method
