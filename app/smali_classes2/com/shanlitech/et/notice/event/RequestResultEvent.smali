.class public Lcom/shanlitech/et/notice/event/RequestResultEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "RequestResultEvent.java"


# instance fields
.field private flogPostFrom:I

.field private request:Lcom/shanlitech/et/ETStatusCode$Request;

.field private requestResultCode:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/ETStatusCode$Request;Lcom/shanlitech/et/ETStatusCode$RequestResultCode;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->request:Lcom/shanlitech/et/ETStatusCode$Request;

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->requestResultCode:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    .line 4
    iput p3, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->flogPostFrom:I

    return-void
.end method


# virtual methods
.method public getFlogPostFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->flogPostFrom:I

    return v0
.end method

.method public getRequest()Lcom/shanlitech/et/ETStatusCode$Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->request:Lcom/shanlitech/et/ETStatusCode$Request;

    return-object v0
.end method

.method public getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->requestResultCode:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    return-object v0
.end method

.method public post()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/shanlitech/et/notice/event/RequestResultEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " /request="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->request:Lcom/shanlitech/et/ETStatusCode$Request;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " /requestResultCode="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->requestResultCode:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " /flogPostFrom="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/shanlitech/et/notice/event/RequestResultEvent;->flogPostFrom:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
