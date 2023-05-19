.class public Lcom/ifengyu/talk/http/entity/SpeechMsg;
.super Ljava/lang/Object;
.source "SpeechMsg.java"


# instance fields
.field private body:Ljava/lang/String;

.field private id:J

.field private payload:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->id:J

    return-wide v0
.end method

.method public getPayload()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->payload:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->body:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->id:J

    return-void
.end method

.method public setPayload(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->payload:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/SpeechMsg;->url:Ljava/lang/String;

    return-void
.end method
