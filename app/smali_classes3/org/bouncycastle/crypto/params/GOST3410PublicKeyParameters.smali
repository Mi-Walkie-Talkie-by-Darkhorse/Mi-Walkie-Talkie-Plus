.class public Lorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/GOST3410KeyParameters;


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/GOST3410Parameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/params/GOST3410KeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;->y:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method
