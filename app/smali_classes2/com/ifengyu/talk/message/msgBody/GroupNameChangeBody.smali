.class public Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;
.super Ljava/lang/Object;
.source "GroupNameChangeBody.java"


# instance fields
.field private acc:Ljava/lang/String;

.field private gname:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->acc:Ljava/lang/String;

    return-object v0
.end method

.method public getGname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->gname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAcc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->acc:Ljava/lang/String;

    return-void
.end method

.method public setGname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->gname:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/GroupNameChangeBody;->name:Ljava/lang/String;

    return-void
.end method
