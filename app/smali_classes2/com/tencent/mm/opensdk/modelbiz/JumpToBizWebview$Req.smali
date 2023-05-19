.class public Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;
.super Lcom/tencent/mm/opensdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final EXT_MSG_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.JumpToBizWebview.Req"


# instance fields
.field public extMsg:Ljava/lang/String;

.field public scene:I

.field public toUserName:Ljava/lang/String;

.field public webType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;->scene:I

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;->toUserName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MicroMsg.SDK.JumpToBizWebview.Req"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;->extMsg:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x400

    if-le v0, v3, :cond_1

    const-string v0, "ext msg is not null, while the length exceed 1024 bytes"

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    const-string v0, "checkArgs fail, toUserName is invalid"

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;->toUserName:Ljava/lang/String;

    const-string v1, "_wxapi_jump_to_biz_webview_req_to_user_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;->extMsg:Ljava/lang/String;

    const-string v1, "_wxapi_jump_to_biz_webview_req_ext_msg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;->webType:I

    const-string v1, "_wxapi_jump_to_biz_webview_req_web_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/mm/opensdk/modelbiz/JumpToBizWebview$Req;->scene:I

    const-string v1, "_wxapi_jump_to_biz_webview_req_scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
