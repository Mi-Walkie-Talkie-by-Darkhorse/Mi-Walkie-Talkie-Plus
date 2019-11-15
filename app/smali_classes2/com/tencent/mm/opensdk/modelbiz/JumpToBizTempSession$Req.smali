.class public Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;
.super Lcom/tencent/mm/opensdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final MAX_SESSION_FROM_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.JumpToBizTempSession.Req"


# instance fields
.field public sessionFrom:Ljava/lang/String;

.field public showType:I

.field public toUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;->toUserName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;->toUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "MicroMsg.SDK.JumpToBizTempSession.Req"

    const-string v2, "checkArgs fail, toUserName is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;->sessionFrom:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;->sessionFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_3

    :cond_2
    const-string v1, "MicroMsg.SDK.JumpToBizTempSession.Req"

    const-string v2, "checkArgs fail, sessionFrom is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_jump_to_biz_webview_req_to_user_name"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;->toUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_jump_to_biz_webview_req_session_from"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;->sessionFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_jump_to_biz_webview_req_show_type"

    iget v1, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizTempSession$Req;->showType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
