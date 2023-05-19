.class public Lcom/shanlitech/et/web/tob/model/request/RequestBodyModifyGroup;
.super Ljava/lang/Object;
.source "RequestBodyModifyGroup.java"

# interfaces
.implements Lcom/shanlitech/et/web/tob/model/request/RequestBodyBase;


# instance fields
.field public final code:Ljava/lang/String;

.field private gid:I

.field private gname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "changegroupname"

    .line 2
    iput-object v0, p0, Lcom/shanlitech/et/web/tob/model/request/RequestBodyModifyGroup;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    const-string v0, "changegroupname"

    return-object v0
.end method

.method public getGid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/model/request/RequestBodyModifyGroup;->gid:I

    return v0
.end method

.method public getGname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/model/request/RequestBodyModifyGroup;->gname:Ljava/lang/String;

    return-object v0
.end method

.method public setGid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/model/request/RequestBodyModifyGroup;->gid:I

    return-void
.end method

.method public setGname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/model/request/RequestBodyModifyGroup;->gname:Ljava/lang/String;

    return-void
.end method
