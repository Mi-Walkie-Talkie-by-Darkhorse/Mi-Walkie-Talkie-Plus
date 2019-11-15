.class public Lorg/bouncycastle/crypto/params/GOST3410KeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/GOST3410Parameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/crypto/params/GOST3410Parameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/GOST3410KeyParameters;->params:Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/GOST3410Parameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/GOST3410KeyParameters;->params:Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    return-object v0
.end method
