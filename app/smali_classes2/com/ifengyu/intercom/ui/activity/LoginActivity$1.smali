.class Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;
.super Lcom/ifengyu/intercom/b/y;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/b/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f09017f

    const v5, 0x7f090127

    const v4, 0x7f020128

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "login_page"

    const-string v3, "xiaomiBtnClick"

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Z)Z

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v2, v1, v0, v5, v4}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->b(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Z)V

    goto :goto_0

    :cond_1
    const v0, 0x7f090219

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_2
    const-string v2, "login_page"

    const-string v3, "wechatBtnClick"

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Z)Z

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-virtual {v2, v1, v0, v5, v4}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->b(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f090219

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->c(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Ljava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->d(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->n(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f1000ed
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
