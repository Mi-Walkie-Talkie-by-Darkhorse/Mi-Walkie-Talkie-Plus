.class Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

# interfaces
.implements Lcom/sina/weibo/sdk/component/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
