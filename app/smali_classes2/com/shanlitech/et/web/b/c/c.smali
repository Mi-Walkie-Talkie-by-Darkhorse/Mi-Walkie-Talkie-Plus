.class public abstract Lcom/shanlitech/et/web/b/c/c;
.super Lcom/shanlitech/et/web/im/a/b;
.source "GroupToBMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupIMethod"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/im/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addMember(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1, p1, p2}, Lcom/shanlitech/et/core/c/l;->A(Lcom/shanlitech/et/model/Group;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs removeMember([Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/core/c/l;->J0(Lcom/shanlitech/et/model/Group;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setConfirmJoinGroup(Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/core/c/l;->O0(Lcom/shanlitech/et/model/Group;Z)Z

    move-result p1

    return p1
.end method

.method public setLockingGroup(Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/core/c/l;->T0(Lcom/shanlitech/et/model/Group;Z)Z

    move-result p1

    return p1
.end method
