.class public Lcom/ifengyu/talk/models/OperatorMsgModel;
.super Ljava/lang/Object;
.source "OperatorMsgModel.java"


# static fields
.field public static final MODE_CREATE_GROUP_ACK:Ljava/lang/String; = "MODE_CREATE_GROUP_ACK"

.field public static final MODE_CREATE_GROUP_ACK_TOKEN:Ljava/lang/String; = "MODE_CREATE_GROUP_ACK_TOKEN"

.field public static final MODE_ENTER_GROUP:Ljava/lang/String; = "MODE_ENTER_GROUP"

.field public static final MODE_ENTER_GROUP_TOKEN:Ljava/lang/String; = "MODE_ENTER_GROUP_TOKEN"

.field public static final MODE_ONE_ADD_GROUPS:Ljava/lang/String; = "MODE_ONE_ADD_GROUPS"


# instance fields
.field private acc:Ljava/lang/String;

.field private errCode:Ljava/lang/String;

.field private errMsg:Ljava/lang/String;

.field private failList:[Lcom/ifengyu/talk/models/OperatorMsgUser;

.field private gid:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private oprName:Ljava/lang/String;

.field private succList:[Lcom/ifengyu/talk/models/OperatorMsgUser;

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
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->acc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->failList:[Lcom/ifengyu/talk/models/OperatorMsgUser;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getOprName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->oprName:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccList()[Lcom/ifengyu/talk/models/OperatorMsgUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->succList:[Lcom/ifengyu/talk/models/OperatorMsgUser;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAcc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->acc:Ljava/lang/String;

    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->errCode:Ljava/lang/String;

    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public setFailList([Lcom/ifengyu/talk/models/OperatorMsgUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->failList:[Lcom/ifengyu/talk/models/OperatorMsgUser;

    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->gid:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->operator:Ljava/lang/String;

    return-void
.end method

.method public setOprName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->oprName:Ljava/lang/String;

    return-void
.end method

.method public setSuccList([Lcom/ifengyu/talk/models/OperatorMsgUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->succList:[Lcom/ifengyu/talk/models/OperatorMsgUser;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/OperatorMsgModel;->token:Ljava/lang/String;

    return-void
.end method
