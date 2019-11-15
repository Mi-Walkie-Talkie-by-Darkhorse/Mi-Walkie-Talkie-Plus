.class public Lorg/bouncycastle/jcajce/spec/RepeatedSecretKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private algorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/RepeatedSecretKeySpec;->algorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/RepeatedSecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
