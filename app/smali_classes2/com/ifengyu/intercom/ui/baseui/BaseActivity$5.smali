.class Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->k()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f09002a

    new-instance v2, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5$2;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f09006c

    new-instance v2, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5$1;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method
