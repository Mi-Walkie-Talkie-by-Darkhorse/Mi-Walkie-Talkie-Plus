.class final Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXApiImplV10"

.field private static wxappPayEntryClassname:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private checkSignature:Z

.field private context:Landroid/content/Context;

.field private detached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    iput-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<init>, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checkSignature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    return-void
.end method

.method private checkSumConsistent([B[B)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "checkSumConsistent fail, invalid arguments"

    invoke-static {v0, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_3

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "checkSumConsistent fail, length is different"

    invoke-static {v0, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/createChatroom"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_basereq_transaction"

    const-string v5, ""

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_create_chatroom_group_id"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_wxapi_create_chatroom_chatroom_name"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "_wxapi_create_chatroom_chatroom_nickname"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "_wxapi_create_chatroom_ext_msg"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    const-string v5, "_wxapi_basereq_openid"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private handleWxInternalRespType(Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleWxInternalRespType, extInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.qq.com/s?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "wx_internal_resptype"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicroMsg.SDK.WXApiImplV10"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleWxInternalRespType, respType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/mm/opensdk/utils/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "handleWxInternalRespType fail, respType is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v3, "subscribemessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;-><init>()V

    const-string v3, "openid"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->openId:Ljava/lang/String;

    const-string v3, "template_id"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->templateID:Ljava/lang/String;

    const-string v3, "scene"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/opensdk/utils/d;->b(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->scene:I

    const-string v3, "action"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->action:Ljava/lang/String;

    const-string v3, "reserved"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Resp;->reserved:Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleWxInternalRespType fail, unknown resptype = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleWxInternalRespType fail, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private joinChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/joinChatroom"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_basereq_transaction"

    const-string v5, ""

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_join_chatroom_group_id"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_wxapi_join_chatroom_chatroom_nickname"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "_wxapi_join_chatroom_ext_msg"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "_wxapi_basereq_openid"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendAddCardToWX(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/addCardToWX"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_add_card_to_wx_card_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendChooseCardFromWX(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/chooseCardFromWX"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_wxapi_choose_card_from_wx_card_app_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "_wxapi_choose_card_from_wx_card_location_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_choose_card_from_wx_card_sign_type"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_wxapi_choose_card_from_wx_card_card_sign"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "_wxapi_choose_card_from_wx_card_time_stamp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "_wxapi_choose_card_from_wx_card_nonce_str"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    const-string v5, "_wxapi_choose_card_from_wx_card_card_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x7

    const-string v5, "_wxapi_choose_card_from_wx_card_card_type"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x8

    const-string v5, "_wxapi_choose_card_from_wx_card_can_multi_select"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x9

    const-string v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendHandleScanResult(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/handleScanResult"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_scan_qrcode_result"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendJumpToBizProfileReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_biz_profile_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_jump_to_biz_profile_req_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_profile_req_scene"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_profile_req_profile_type"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendJumpToBizTempSessionReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizTempSession"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_biz_webview_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_jump_to_biz_webview_req_session_from"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_webview_req_show_type"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendJumpToBizWebviewReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_biz_webview_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_jump_to_biz_webview_req_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_webview_req_scene"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendOpenBusiLuckyMoney(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/openBusiLuckyMoney"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_open_busi_lucky_money_timeStamp"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_open_busi_lucky_money_nonceStr"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_wxapi_open_busi_lucky_money_signType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "_wxapi_open_busi_lucky_money_signature"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "_wxapi_open_busi_lucky_money_package"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendOpenRankListReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/openRankList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private sendOpenWebview(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/openWebview"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_webview_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/opensdk/openapi/MMSharedPreferences;

    invoke-direct {v0, p1}, Lcom/tencent/mm/opensdk/openapi/MMSharedPreferences;-><init>(Landroid/content/Context;)V

    const-string v1, "_wxapp_pay_entry_classname_"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/MMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay, set wxappPayEntryClassname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.tencent.mm.BuildInfo.OPEN_SDK_PAY_ENTRY_CLASSNAME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "pay fail, wxappPayEntryClassname is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get from metaData failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;-><init>()V

    iput-object p2, v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->bundle:Landroid/os/Bundle;

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->targetPkgName:Ljava/lang/String;

    sget-object v1, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->targetClassName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/channel/MMessageActV2;->send(Landroid/content/Context;Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;)Z

    move-result v0

    goto :goto_1
.end method

.method private sendSubscribeMessage(Landroid/content/Context;Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    check-cast p2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/openTypeWebview"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "1"

    aput-object v3, v4, v6

    const/4 v3, 0x2

    iget v5, p2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->scene:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    iget-object v5, p2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->templateID:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x4

    iget-object v5, p2, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->reserved:Ljava/lang/String;

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method


# virtual methods
.method public final detach()V
    .locals 2

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "detach"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    return-void
.end method

.method public final getWXAppSupportAPI()I
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWXAppSupportAPI fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Lcom/tencent/mm/opensdk/openapi/MMSharedPreferences;

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/mm/opensdk/openapi/MMSharedPreferences;-><init>(Landroid/content/Context;)V

    const-string v2, "_build_info_sdk_int_"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/opensdk/openapi/MMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.tencent.mm.BuildInfo.OPEN_SDK_VERSION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get from metaData failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.tencent.mm.openapi.token"

    invoke-static {p1, v2}, Lcom/tencent/mm/opensdk/openapi/WXApiImplComm;->isIntentFromWx(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "handleIntent fail, intent not from weixin msg"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "handleIntent fail, WXMsgImpl has been detached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleIntent fail, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "_mmessage_content"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_mmessage_sdkVersion"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "_mmessage_appPackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "invalid argument"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "_mmessage_checksum"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/opensdk/channel/a/b;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSumConsistent([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "checksum fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "_wxapi_command_type"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "MicroMsg.SDK.WXApiImplV10"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleIntent, cmd = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown cmd = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/GetMessageFromWX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelmsg/GetMessageFromWX$Req;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;-><init>(Landroid/os/Bundle;)V

    iget-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iget-object v3, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v4, "wx_internal_resptype"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3, p2}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->handleWxInternalRespType(Ljava/lang/String;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    move-result v1

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleIntent, extInfo contains wx_internal_resptype, ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Lcom/tencent/mm/opensdk/modelpay/PayResp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelpay/PayResp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_7
    new-instance v2, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_8
    new-instance v2, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_9
    new-instance v2, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_a
    new-instance v2, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_b
    new-instance v2, Lcom/tencent/mm/opensdk/modelbiz/OpenWebview$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelbiz/OpenWebview$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_c
    new-instance v2, Lcom/tencent/mm/opensdk/modelbiz/HandleScanResult$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/opensdk/modelbiz/HandleScanResult$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public final isWXAppInstalled()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isWXAppInstalled fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-boolean v3, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/opensdk/openapi/WXApiImplComm;->validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final isWXAppSupportAPI()Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isWXAppSupportAPI fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x25000008

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openWXApp()Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "openWXApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startActivity fail, exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final registerApp(Ljava/lang/String;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->registerApp(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final registerApp(Ljava/lang/String;J)Z
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "registerApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    iget-boolean v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "register app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    :cond_2
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    :cond_3
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/opensdk/channel/a/a$a;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/channel/a/a$a;-><init>()V

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/a/a$a;->a:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/a/a$a;->action:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin://registerapp?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/a/a$a;->content:Ljava/lang/String;

    iput-wide p2, v0, Lcom/tencent/mm/opensdk/channel/a/a$a;->b:J

    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/channel/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/opensdk/channel/a/a$a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sendReq fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    iget-boolean v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "sendReq failed for wechat app signature check failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->checkArgs()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "sendReq checkArgs fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendReq, req type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v4}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendJumpToBizProfileReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendJumpToBizWebviewReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendJumpToBizTempSessionReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendAddCardToWX(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendChooseCardFromWX(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendOpenRankListReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendOpenWebview(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendOpenBusiLuckyMoney(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->createChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->joinChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendHandleScanResult(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->sendSubscribeMessage(Landroid/content/Context;Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const-string v0, "_wxapi_sendmessagetowx_req_media_type"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->getWXAppSupportAPI()I

    move-result v1

    const v2, 0x25000001

    if-ge v1, v2, :cond_12

    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    const-string v2, "_wxminiprogram_webpageurl"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    :cond_10
    :goto_1
    iput v3, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    invoke-virtual {p1, v4}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    :cond_11
    new-instance v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;-><init>()V

    iput-object v4, v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->bundle:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin://sendreq?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->content:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->targetPkgName:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->targetClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/channel/MMessageActV2;->send(Landroid/content/Context;Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;)Z

    move-result v0

    goto/16 :goto_0

    :cond_12
    iget-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iget-object v1, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    check-cast v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->userName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "@app"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->userName:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/opensdk/utils/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "\\?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-le v5, v7, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".html?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->path:Ljava/lang/String;

    goto :goto_1

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".html"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public final sendResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sendResp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v2, "com.tencent.mm"

    iget-boolean v3, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/opensdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendResp failed for wechat app signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendResp checkArgs fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->toBundle(Landroid/os/Bundle;)V

    new-instance v1, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;-><init>()V

    iput-object v0, v1, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->bundle:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "weixin://sendresp?appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->content:Ljava/lang/String;

    const-string v0, "com.tencent.mm"

    iput-object v0, v1, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->targetPkgName:Ljava/lang/String;

    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    iput-object v0, v1, Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;->targetClassName:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/channel/MMessageActV2;->send(Landroid/content/Context;Lcom/tencent/mm/opensdk/channel/MMessageActV2$Args;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setLogImpl(Lcom/tencent/mm/opensdk/utils/ILog;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/mm/opensdk/utils/Log;->setLogImpl(Lcom/tencent/mm/opensdk/utils/ILog;)V

    return-void
.end method

.method public final unregisterApp()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unregisterApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    iget-boolean v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "unregister app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "unregisterApp fail, appId is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregister app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/opensdk/channel/a/a$a;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/channel/a/a$a;-><init>()V

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/a/a$a;->a:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/a/a$a;->action:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin://unregisterapp?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/channel/a/a$a;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/channel/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/opensdk/channel/a/a$a;)Z

    goto :goto_0
.end method
