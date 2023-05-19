.class public Lcom/shanlitech/et/notice/event/SearchResultEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "SearchResultEvent.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private user:Lcom/shanlitech/et/model/User;


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/SearchResultEvent;->user:Lcom/shanlitech/et/model/User;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/SearchResultEvent;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/SearchResultEvent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/SearchResultEvent;->user:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/SearchResultEvent;->user:Lcom/shanlitech/et/model/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/shanlitech/et/notice/event/SearchResultEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " user=["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/SearchResultEvent;->user:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " msg=["

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/shanlitech/et/notice/event/SearchResultEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
