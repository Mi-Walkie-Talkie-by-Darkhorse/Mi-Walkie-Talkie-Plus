.class final Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;
.super Landroid/os/AsyncTask;
.source "XiaomiOAuthorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
        ">;"
    }
.end annotation


# instance fields
.field e:Ljava/lang/Exception;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I

.field final synthetic val$typeCode:Ljava/lang/String;

.field final synthetic val$y:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$y:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$typeCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$requestCode:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$y:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/openauth/XMAuthericationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->e:Ljava/lang/Exception;

    goto :goto_1

    :catch_2
    move-exception v0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->e:Ljava/lang/Exception;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->doInBackground([Ljava/lang/Void;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)V
    .locals 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    const-string v2, "error"

    sget v3, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "error_description"

    const-string v3, "canceled"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->access$000()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->asMiddleActivity(Landroid/app/Activity;ILandroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$requestCode:I

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    const-string v2, "error"

    sget v3, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "error_description"

    iget-object v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->e:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    const-string v2, "error"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "error_description"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    const-string v2, "code"

    iget-object v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->val$typeCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "code"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "token_type"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getTokenType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mac_key"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mac_algorithm"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "access_token"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expires_in"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getExpiresIn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scope"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getScopes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "token_type"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getTokenType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mac_key"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mac_algorithm"

    invoke-virtual {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->onPostExecute(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)V

    return-void
.end method
