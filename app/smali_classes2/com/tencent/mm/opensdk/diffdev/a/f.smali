.class final Lcom/tencent/mm/opensdk/diffdev/a/f;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/opensdk/diffdev/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/tencent/mm/opensdk/diffdev/a/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

.field private p:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private v:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mm/opensdk/diffdev/OAuthListener;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->m:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    const-string v0, "https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.SDK.NoopingTask"

    const-string v1, "run fail, uuid is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/diffdev/a/f$a;-><init>()V

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->o:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/diffdev/a/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->v:I

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0xea60

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/diffdev/a/e;->a(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->b([B)Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    move-result-object v0

    const-string v6, "MicroMsg.SDK.NoopingTask"

    const-string v7, "nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v9

    iget-object v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->o:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    iget v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    const/4 v1, 0x3

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->o:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    if-ne v1, v2, :cond_6

    iget v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:I

    iput v1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->v:I

    iget v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:I

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/a/g;->A:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v2}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->m:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;->onQrcodeScanned()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&last="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:I

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/a/g;->C:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v2}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:I

    sget-object v2, Lcom/tencent/mm/opensdk/diffdev/a/g;->B:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v2}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->w:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    const-string v1, "MicroMsg.SDK.NoopingTask"

    const-string v2, "nooping fail, confirm with an empty code!!!"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->o:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto/16 :goto_0

    :cond_6
    const-string v1, "MicroMsg.SDK.NoopingTask"

    const-string v2, "nooping fail, errCode = %s, uuidStatusCode = %d"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->o:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v4}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "MicroMsg.SDK.NoopingTask"

    const-string v1, "IDiffDevOAuth.stopAuth / detach invoked"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/diffdev/a/f$a;-><init>()V

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_Auth_Stopped:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->o:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto/16 :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->m:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    iget-object v1, p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->o:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iget-object v2, p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V

    return-void
.end method
