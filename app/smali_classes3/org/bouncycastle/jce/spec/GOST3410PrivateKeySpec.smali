.class public Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->x:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->p:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->q:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->a:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object v0
.end method
