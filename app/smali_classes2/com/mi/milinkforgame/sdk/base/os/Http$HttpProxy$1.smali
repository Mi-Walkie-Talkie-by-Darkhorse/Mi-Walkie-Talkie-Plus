.class final Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy$1;
.super Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/os/Http$HttpProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    return v0
.end method
