.class public Lorg/bouncycastle/pqc/jcajce/spec/GMSSPublicKeySpec;
.super Lorg/bouncycastle/pqc/jcajce/spec/GMSSKeySpec;


# instance fields
.field private gmssPublicKey:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/jcajce/spec/GMSSKeySpec;-><init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPublicKeySpec;->gmssPublicKey:[B

    return-void
.end method


# virtual methods
.method public getPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSPublicKeySpec;->gmssPublicKey:[B

    return-object v0
.end method
