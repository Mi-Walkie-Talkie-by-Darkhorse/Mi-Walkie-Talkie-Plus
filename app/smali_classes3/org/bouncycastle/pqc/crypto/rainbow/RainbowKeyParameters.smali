.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private docLength:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return-void
.end method


# virtual methods
.method public getDocLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->docLength:I

    return v0
.end method
