.class public Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;
.super Ljava/lang/Object;
.source "MemberChangeBodyItem.java"


# instance fields
.field private acc:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private user:Lcom/shanlitech/et/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->acc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->user:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public setAcc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->acc:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/shanlitech/et/model/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;->user:Lcom/shanlitech/et/model/User;

    return-void
.end method
