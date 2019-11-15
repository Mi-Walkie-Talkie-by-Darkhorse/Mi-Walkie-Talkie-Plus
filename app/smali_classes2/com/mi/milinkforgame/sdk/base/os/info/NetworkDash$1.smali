.class final Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash$1;
.super Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;
.source "NetworkDash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->updateNetworkState()Z

    return-void
.end method
