.class public Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method


# virtual methods
.method public getPreComp()[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v0
.end method

.method public setPreComp([Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method
