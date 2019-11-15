.class public Lcom/ifengyu/intercom/ui/widget/dialog/ab;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "UnbindAskDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Z

.field private d:Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->c:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->d:Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;

    return-object p0
.end method

.method protected a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->dismiss()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->c:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->d:Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;->a()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100337
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040105

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->setContentView(I)V

    const v0, 0x7f100336

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a(Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a([I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :array_0
    .array-data 4
        0x7f100337
        0x7f100338
    .end array-data
.end method
