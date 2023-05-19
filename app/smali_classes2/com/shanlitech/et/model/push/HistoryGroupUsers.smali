.class public Lcom/shanlitech/et/model/push/HistoryGroupUsers;
.super Ljava/lang/Object;
.source "HistoryGroupUsers.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public acc:Ljava/lang/String;

.field public id:I

.field public ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/push/MsgUser;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/push/MsgUser;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/push/HistoryGroupUsers;->ids:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method
