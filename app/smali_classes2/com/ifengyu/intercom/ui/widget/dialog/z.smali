.class public Lcom/ifengyu/intercom/ui/widget/dialog/z;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;
.source "UnbindAskDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/z$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Lcom/ifengyu/intercom/ui/widget/dialog/z$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->a:Landroid/app/Activity;

    .line 3
    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/z$a;)Lcom/ifengyu/intercom/ui/widget/dialog/z;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->c:Lcom/ifengyu/intercom/ui/widget/dialog/z$a;

    return-object p0
.end method

.method protected a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->c:Lcom/ifengyu/intercom/ui/widget/dialog/z$a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/z$a;->a()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0904a6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0137

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    const p1, 0x7f0904a5

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->b:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/z;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0904a6
        0x7f0904a7
    .end array-data
.end method
