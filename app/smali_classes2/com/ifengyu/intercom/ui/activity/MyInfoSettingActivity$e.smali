.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;
.super Lcom/ifengyu/intercom/g/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(I)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->b:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const p2, 0x7f1102cd

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const p2, 0x7f080191

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    iget p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->b:I

    if-nez p1, :cond_0

    const-string p1, "male"

    goto :goto_0

    :cond_0
    const-string p1, "female"

    :goto_0
    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const p2, 0x7f110248

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$c;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$c;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const p2, 0x7f110248

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
