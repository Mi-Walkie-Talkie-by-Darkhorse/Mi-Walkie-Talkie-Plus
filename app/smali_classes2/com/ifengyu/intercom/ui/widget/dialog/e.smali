.class public Lcom/ifengyu/intercom/ui/widget/dialog/e;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    const v0, 0x7f0900e3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0077

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const v1, 0x7f0900e3

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a([I)V

    return-void
.end method
