.class public Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT_M:I = 0xb

.field public static final DEFAULT_T:I = 0x32


# instance fields
.field private fieldPoly:I

.field private m:I

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "key size must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    iput v1, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    if-ge v0, p1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->t:I

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->t:I

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->t:I

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->fieldPoly:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    shl-int v0, v1, p1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    if-gez p2, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    if-le p2, v0, :cond_3

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->t:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->fieldPoly:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, " m is too large"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    shl-int v0, v1, p1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->t:I

    if-gez p2, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    if-le p2, v0, :cond_3

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne v0, p1, :cond_4

    invoke-static {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->fieldPoly:I

    return-void

    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFieldPoly()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->fieldPoly:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->m:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->t:I

    return v0
.end method
