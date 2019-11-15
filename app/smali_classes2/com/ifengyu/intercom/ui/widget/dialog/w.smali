.class public Lcom/ifengyu/intercom/ui/widget/dialog/w;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "OffMapRenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/w$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Lcom/ifengyu/intercom/ui/widget/dialog/w$a;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->e:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/w;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->e:I

    return v0
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090220

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090221

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f09020c

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d:Lcom/ifengyu/intercom/ui/widget/dialog/w$a;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/w$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100323
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/w$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d:Lcom/ifengyu/intercom/ui/widget/dialog/w$a;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400f9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a(Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->a([I)V

    const v0, 0x7f100322

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/w$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/w$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100323
        0x7f100324
    .end array-data
.end method
