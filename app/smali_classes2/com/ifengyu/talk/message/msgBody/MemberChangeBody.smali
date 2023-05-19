.class public Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;
.super Ljava/lang/Object;
.source "MemberChangeBody.java"


# instance fields
.field private acc:Ljava/lang/String;

.field private id:J

.field private ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private token:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->acc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->id:J

    return-wide v0
.end method

.method public getIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->ids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAcc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->acc:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->id:J

    return-void
.end method

.method public setIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/message/msgBody/MemberChangeBodyItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->ids:Ljava/util/ArrayList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->name:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/message/msgBody/MemberChangeBody;->token:Ljava/lang/String;

    return-void
.end method
