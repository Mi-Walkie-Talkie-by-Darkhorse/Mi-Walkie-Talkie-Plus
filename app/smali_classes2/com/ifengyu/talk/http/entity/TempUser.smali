.class public Lcom/ifengyu/talk/http/entity/TempUser;
.super Ljava/lang/Object;
.source "TempUser.java"


# instance fields
.field private account:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private userId:J

.field private userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/TempUser;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/TempUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/http/entity/TempUser;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/http/entity/TempUser;->userId:J

    return-wide v0
.end method

.method public getUserType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/http/entity/TempUser;->userType:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/TempUser;->account:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/TempUser;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/http/entity/TempUser;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/http/entity/TempUser;->userId:J

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/http/entity/TempUser;->userType:I

    return-void
.end method
