.class public Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;
.super Ljava/lang/Object;
.source "NotifyCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserInfo"
.end annotation


# instance fields
.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nick_name"
    .end annotation
.end field

.field final synthetic this$1:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

.field private userId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->this$1:Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->userId:I

    return v0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/NotifyCommand$MsgBody$UserInfo;->userId:I

    return-void
.end method
