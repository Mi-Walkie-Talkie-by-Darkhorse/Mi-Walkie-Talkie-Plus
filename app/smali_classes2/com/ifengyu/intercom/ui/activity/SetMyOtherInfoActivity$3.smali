.class Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;
.super Lcom/ifengyu/intercom/a/b/j;
.source "SetMyOtherInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_my_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/node/f;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_my_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_my_email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->e(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    goto :goto_1
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->e(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    return-void
.end method
