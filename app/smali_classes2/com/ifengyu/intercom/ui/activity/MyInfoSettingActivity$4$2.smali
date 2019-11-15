.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const v2, 0x7f0901e0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->k()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->N()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "male"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v2, 0x7f0901df

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v2, 0x7f0901de

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4$2;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
