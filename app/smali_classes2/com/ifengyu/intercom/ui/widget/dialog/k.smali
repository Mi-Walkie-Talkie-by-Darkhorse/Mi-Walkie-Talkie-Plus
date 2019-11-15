.class public Lcom/ifengyu/intercom/ui/widget/dialog/k;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "GaoDeMapDownloadItemClickDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/k$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/k$a;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->c:Z

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->d:Z

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->b:Lcom/ifengyu/intercom/ui/widget/dialog/k$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k$a;->a()V

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->b:Lcom/ifengyu/intercom/ui/widget/dialog/k$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k$a;->b()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->b:Lcom/ifengyu/intercom/ui/widget/dialog/k$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k$a;->c()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->b:Lcom/ifengyu/intercom/ui/widget/dialog/k$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k$a;->c()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->dismiss()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100208
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f09006f

    const v5, 0x7f09006c

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040086

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a(Landroid/app/Activity;)V

    const v0, 0x7f100208

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100209

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f10020a

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f10020b

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->c:Z

    if-eqz v4, :cond_1

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    const v4, 0x7f090076

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a([I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    const v4, 0x7f09006d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f100208
        0x7f10020a
        0x7f10020b
    .end array-data
.end method

.method public setOnClickListener(Lcom/ifengyu/intercom/ui/widget/dialog/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/k;->b:Lcom/ifengyu/intercom/ui/widget/dialog/k$a;

    return-void
.end method
