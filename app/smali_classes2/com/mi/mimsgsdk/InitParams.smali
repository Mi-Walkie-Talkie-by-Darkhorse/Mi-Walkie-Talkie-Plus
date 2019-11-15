.class public Lcom/mi/mimsgsdk/InitParams;
.super Ljava/lang/Object;
.source "InitParams.java"


# instance fields
.field appId:Ljava/lang/String;

.field b2Token:Ljava/lang/String;

.field gUid:Ljava/lang/String;

.field listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

.field pId:Ljava/lang/String;

.field pSkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/InitParams;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getB2Token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/InitParams;->b2Token:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/mi/mimsgsdk/IMXMsgCallback;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/InitParams;->listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    return-object v0
.end method

.method public getgUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    return-object v0
.end method

.method public getpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/InitParams;->pId:Ljava/lang/String;

    return-object v0
.end method

.method public getpSkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/InitParams;->pSkey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/InitParams;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setB2Token(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/InitParams;->b2Token:Ljava/lang/String;

    return-object p0
.end method

.method public setListener(Lcom/mi/mimsgsdk/IMXMsgCallback;)Lcom/mi/mimsgsdk/InitParams;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/InitParams;->listener:Lcom/mi/mimsgsdk/IMXMsgCallback;

    return-object p0
.end method

.method public setgUid(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/InitParams;->gUid:Ljava/lang/String;

    return-object p0
.end method

.method public setpId(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/InitParams;->pId:Ljava/lang/String;

    return-object p0
.end method

.method public setpSkey(Ljava/lang/String;)Lcom/mi/mimsgsdk/InitParams;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/InitParams;->pSkey:Ljava/lang/String;

    return-object p0
.end method
