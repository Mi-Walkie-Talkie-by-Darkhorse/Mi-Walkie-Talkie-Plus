.class public Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private n:I

.field private oid:Ljava/lang/String;

.field private t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->t:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->oid:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->t:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-void
.end method


# virtual methods
.method public getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->n:I

    return v0
.end method

.method public getOIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->t:I

    return v0
.end method
