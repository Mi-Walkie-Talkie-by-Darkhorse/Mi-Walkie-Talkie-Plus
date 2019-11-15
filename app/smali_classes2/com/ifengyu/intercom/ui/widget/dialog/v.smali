.class public Lcom/ifengyu/intercom/ui/widget/dialog/v;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "ModifySexDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/v$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/v$a;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->c:I

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->dismiss()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->b:Lcom/ifengyu/intercom/ui/widget/dialog/v$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->b:Lcom/ifengyu/intercom/ui/widget/dialog/v$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/v$a;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->dismiss()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->b:Lcom/ifengyu/intercom/ui/widget/dialog/v$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->b:Lcom/ifengyu/intercom/ui/widget/dialog/v$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/v$a;->a(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1002fc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0f0095

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400e5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->a(Landroid/app/Activity;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->a([I)V

    const v0, 0x7f1002fc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1002fd

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/v;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :array_0
    .array-data 4
        0x7f1002fc
        0x7f1002fd
        0x7f1002fe
    .end array-data
.end method

.method public setClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/v$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/v;->b:Lcom/ifengyu/intercom/ui/widget/dialog/v$a;

    return-void
.end method
