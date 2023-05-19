.class public abstract Lcom/shanlitech/et/b/c/a;
.super Lcom/shanlitech/et/web/b/c/a;
.source "AccountMethod.java"

# interfaces
.implements Lcom/shanlitech/et/core/sl/model/IAccount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/a;-><init>()V

    return-void
.end method

.method private varargs createFullDuplexGroup(Ljava/lang/String;ZZLcom/shanlitech/et/b/a;[Ljava/lang/String;)Z
    .locals 8

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/shanlitech/et/core/c/l;->addOnceNeedGroupListener(Lcom/shanlitech/et/b/a;)V

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    sget v4, Lcom/shanlitech/et/model/Group;->GROUP_FULL_DUPLEX:I

    const-string v3, ""

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/shanlitech/et/core/c/l;->e(Ljava/lang/String;Ljava/lang/String;IZZ[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private varargs createFullDuplexGroup(Ljava/lang/String;ZZ[Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/shanlitech/et/b/c/a;->createFullDuplexGroup(Ljava/lang/String;ZZLcom/shanlitech/et/b/a;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private varargs createSessionGroup(Ljava/lang/String;ZZLcom/shanlitech/et/b/a;[Ljava/lang/String;)Z
    .locals 8

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/shanlitech/et/core/c/l;->addOnceNeedGroupListener(Lcom/shanlitech/et/b/a;)V

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    sget v4, Lcom/shanlitech/et/model/Group;->GROUP_SESSION:I

    const-string v3, ""

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/shanlitech/et/core/c/l;->e(Ljava/lang/String;Ljava/lang/String;IZZ[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private varargs createSessionGroup(Ljava/lang/String;ZZ[Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/shanlitech/et/b/c/a;->createSessionGroup(Ljava/lang/String;ZZLcom/shanlitech/et/b/a;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addPushHandler(Ljava/lang/String;Lcom/shanlitech/et/core/c/j$a;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/j;->b()Lcom/shanlitech/et/core/c/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/j;->a(Ljava/lang/String;Lcom/shanlitech/et/core/c/j$a;)Z

    move-result p1

    return p1
.end method

.method public varargs createFullDuplexGroup(Ljava/lang/String;Z[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/shanlitech/et/b/c/a;->createFullDuplexGroup(Ljava/lang/String;ZZLcom/shanlitech/et/b/a;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs createGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    sget v3, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/shanlitech/et/core/c/l;->e(Ljava/lang/String;Ljava/lang/String;IZZ[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs createSessionGroup(Ljava/lang/String;Z[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/shanlitech/et/b/c/a;->createSessionGroup(Ljava/lang/String;ZZLcom/shanlitech/et/b/a;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value_device_id"

    invoke-virtual {v0, v2, v1}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removePushHandler(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/j;->b()Lcom/shanlitech/et/core/c/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/j;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPlayerMuted(Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerMuted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Account"

    invoke-static {v1, v0}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->setPlayerMuted(Z)Z

    move-result p1

    return p1
.end method

.method public setRecorderMuted(Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecorderMuted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Account"

    invoke-static {v1, v0}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->setRecorderMuted(Z)Z

    move-result p1

    return p1
.end method

.method public writeConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
