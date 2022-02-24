.class Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;
.super Lcom/ifengyu/intercom/g/d/l;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const p2, 0x7f1102cd

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const p2, 0x7f080191

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "setting_my_name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->i(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ifengyu/intercom/node/e;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "setting_my_phone"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "setting_my_email"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->g(Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const p2, 0x7f110248

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->e(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    :goto_1
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const p2, 0x7f110248

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->e(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    return-void
.end method
