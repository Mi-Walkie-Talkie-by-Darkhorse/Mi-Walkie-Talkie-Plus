.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;
.super Lcom/ifengyu/intercom/a/b/j;
.source "MyInfoSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->b:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    const-wide/16 v2, 0x1f4

    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->b:I

    if-nez v0, :cond_0

    const-string v0, "male"

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_0
    const-string v0, "female"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$3;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$1;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
