.class public Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;
.super Lcom/tencent/mm/opensdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# instance fields
.field public chatroomNickName:Ljava/lang/String;

.field public extMsg:Ljava/lang/String;

.field public groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->groupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->groupId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/utils/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->groupId:Ljava/lang/String;

    const-string v1, "_wxapi_join_chatroom_group_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->chatroomNickName:Ljava/lang/String;

    const-string v1, "_wxapi_join_chatroom_chatroom_nickname"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->extMsg:Ljava/lang/String;

    const-string v1, "_wxapi_join_chatroom_ext_msg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    const-string v1, "_wxapi_basereq_openid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
