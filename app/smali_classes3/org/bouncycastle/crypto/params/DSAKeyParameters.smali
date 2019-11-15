.class public Lorg/bouncycastle/crypto/params/DSAKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/crypto/params/DSAParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->params:Lorg/bouncycastle/crypto/params/DSAParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->params:Lorg/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
