.class public abstract Lcom/shanlitech/et/b/c/b;
.super Lcom/shanlitech/et/web/b/c/c;
.source "GroupMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupMethod"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getGid()J
.end method

.method public varargs setMembersTop(Z[Lcom/shanlitech/et/model/Member;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/b;->getGid()J

    move-result-wide v0

    invoke-static {p2}, Lcom/shanlitech/et/c/h;->c([Lcom/shanlitech/et/model/Member;)[J

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/shanlitech/et/CoreEngine;->setMemberTop(J[JZ)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMembersTop() called with: top = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "], members = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] result = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GroupMethod"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
