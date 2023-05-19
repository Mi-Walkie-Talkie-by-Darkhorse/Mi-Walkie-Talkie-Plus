.class public Lcom/shanlitech/et/notice/event/InvitationEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "InvitationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/notice/event/InvitationEvent$Type;
    }
.end annotation


# instance fields
.field private count:I

.field private type:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/notice/event/InvitationEvent$Type;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/InvitationEvent;->type:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    .line 3
    iput p2, p0, Lcom/shanlitech/et/notice/event/InvitationEvent;->count:I

    return-void
.end method


# virtual methods
.method public getContactApplicationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/core/sl/model/IContactApplication;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/g;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactInvitationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/core/sl/model/IContactInvitation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/g;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/InvitationEvent;->count:I

    return v0
.end method

.method public getType()Lcom/shanlitech/et/notice/event/InvitationEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/InvitationEvent;->type:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/shanlitech/et/notice/event/InvitationEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ">type=["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/InvitationEvent;->type:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " count=["

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/shanlitech/et/notice/event/InvitationEvent;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
