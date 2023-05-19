.class public Lcom/ifengyu/intercom/http/entity/FeedbackEntity;
.super Ljava/lang/Object;
.source "FeedbackEntity.java"


# instance fields
.field private content:Ljava/lang/String;

.field private createTime:J

.field private email:Ljava/lang/String;

.field private feedObject:Ljava/lang/String;

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->createTime:J

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedObject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->feedObject:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->id:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->createTime:J

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->email:Ljava/lang/String;

    return-void
.end method

.method public setFeedObject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->feedObject:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/http/entity/FeedbackEntity;->id:J

    return-void
.end method
