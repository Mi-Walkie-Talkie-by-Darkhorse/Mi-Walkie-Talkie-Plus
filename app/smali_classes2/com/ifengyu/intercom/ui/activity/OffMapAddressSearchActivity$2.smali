.class Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;
.super Ljava/lang/Object;
.source "OffMapAddressSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->b(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->e(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "action"

    const-string v3, "locationSug"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userid"

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "query"

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->V()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "city"

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sign"

    invoke-static {v0}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ifengyu/intercom/network/a/c;

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/network/a/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2$1;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->f(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/network/a/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/network/a/c;->a(Lcom/ifengyu/intercom/network/a/a;Lcom/ifengyu/intercom/network/a/d;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
