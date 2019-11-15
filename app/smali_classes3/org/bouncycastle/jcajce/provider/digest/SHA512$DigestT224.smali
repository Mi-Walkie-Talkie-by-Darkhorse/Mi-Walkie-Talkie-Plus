.class public Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT224;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestT224"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xe0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT;-><init>(I)V

    return-void
.end method
