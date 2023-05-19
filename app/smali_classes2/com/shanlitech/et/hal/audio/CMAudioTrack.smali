.class public final Lcom/shanlitech/et/hal/audio/CMAudioTrack;
.super Ljava/lang/Object;
.source "CMAudioTrack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMAudio"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startPlay()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "startPlay"

    aput-object v2, v0, v1

    const-string v1, "CMAudio"

    .line 1
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getAudioTracker()Lcom/shanlitech/et/core/sl/hal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/shanlitech/et/core/sl/hal/b;->a()I

    move-result v0

    return v0
.end method

.method public static stopPlay()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "stopPlay"

    aput-object v2, v0, v1

    const-string v1, "CMAudio"

    .line 1
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getAudioTracker()Lcom/shanlitech/et/core/sl/hal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/shanlitech/et/core/sl/hal/b;->b()I

    move-result v0

    return v0
.end method

.method public static write([B)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "startPlay.buffer.length : "

    aput-object v2, v0, v1

    .line 1
    array-length v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CMAudio"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getAudioTracker()Lcom/shanlitech/et/core/sl/hal/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shanlitech/et/core/sl/hal/b;->write([B)I

    move-result p0

    return p0
.end method
