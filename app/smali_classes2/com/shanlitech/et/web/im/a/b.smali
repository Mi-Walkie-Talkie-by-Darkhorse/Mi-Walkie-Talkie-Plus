.class public abstract Lcom/shanlitech/et/web/im/a/b;
.super Ljava/lang/Object;
.source "GroupIMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getGid()J
.end method

.method protected gid()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/a/b;->getGid()J

    move-result-wide v0

    return-wide v0
.end method

.method protected name()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uid()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v0

    return-wide v0
.end method
