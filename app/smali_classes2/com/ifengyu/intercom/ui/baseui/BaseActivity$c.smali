.class Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;->c()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110029

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110026

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f11002a

    new-instance v2, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c$b;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110093

    new-instance v2, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c$a;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    return-void
.end method
