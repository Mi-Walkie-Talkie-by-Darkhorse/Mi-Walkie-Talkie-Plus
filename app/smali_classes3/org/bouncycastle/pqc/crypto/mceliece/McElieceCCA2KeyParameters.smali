.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;->params:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;->params:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    return-object v0
.end method
