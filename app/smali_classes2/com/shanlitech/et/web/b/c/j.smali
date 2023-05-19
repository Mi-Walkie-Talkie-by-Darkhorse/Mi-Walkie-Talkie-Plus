.class public abstract Lcom/shanlitech/et/web/b/c/j;
.super Ljava/lang/Object;
.source "VideoUserMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getUid()J
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/j;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public isReporting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestViewVideo()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/j;->isReporting()Z

    const/4 v0, 0x0

    return v0
.end method
