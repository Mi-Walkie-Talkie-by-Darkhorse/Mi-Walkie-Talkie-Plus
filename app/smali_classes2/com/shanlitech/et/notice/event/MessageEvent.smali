.class public Lcom/shanlitech/et/notice/event/MessageEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "MessageEvent.java"


# static fields
.field private static final MESSAGE_CODE:I = -0x270f


# instance fields
.field protected code:I

.field protected msg:Ljava/lang/String;

.field private final reason:I

.field protected userInfo:Lcom/shanlitech/et/web/model/UserInfo;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shanlitech/et/notice/event/MessageEvent;-><init>(ILjava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 3
    iput p1, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->code:I

    .line 4
    invoke-static {p1, p3, p2}, Lcom/shanlitech/et/c/e;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->msg:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->reason:I

    .line 6
    iput-object p4, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->userInfo:Lcom/shanlitech/et/web/model/UserInfo;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->reason:I

    return v0
.end method

.method public getUserInfo()Lcom/shanlitech/et/web/model/UserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->userInfo:Lcom/shanlitech/et/web/model/UserInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEvent{reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/notice/event/MessageEvent;->userInfo:Lcom/shanlitech/et/web/model/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
