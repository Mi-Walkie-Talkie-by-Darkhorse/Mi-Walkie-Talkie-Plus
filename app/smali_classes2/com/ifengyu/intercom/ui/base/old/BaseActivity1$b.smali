.class Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;
.super Ljava/lang/Object;
.source "BaseActivity1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->h:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f110027

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->s(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    const v2, 0x7f110024

    .line 7
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f110028

    new-instance v2, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b$b;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f1100bd

    new-instance v2, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b$a;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;)V

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    return-void
.end method
