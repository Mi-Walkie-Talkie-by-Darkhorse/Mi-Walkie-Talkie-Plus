.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->M()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1102f4

    if-eqz v0, :cond_3

    const-string v2, "null"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "male"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v2, 0x7f1102f3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v2, 0x7f1102f2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e$b;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$e;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
