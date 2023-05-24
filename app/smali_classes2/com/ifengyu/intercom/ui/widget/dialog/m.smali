.class public Lcom/ifengyu/intercom/ui/widget/dialog/m;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "InsertChannelDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/m$k;
    }
.end annotation


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Lcom/ifengyu/intercom/ui/widget/dialog/m$k;

.field private f:Landroid/widget/EditText;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->n:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o:I

    return-void
.end method

.method static synthetic s(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Lcom/ifengyu/intercom/ui/widget/dialog/m$k;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->e:Lcom/ifengyu/intercom/ui/widget/dialog/m$k;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public u()V
    .locals 2

    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->f:Landroid/widget/EditText;

    const v0, 0x7f0904cf

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f110090

    goto/16 :goto_1

    :pswitch_1
    const v1, 0x7f1101a3

    goto/16 :goto_1

    :pswitch_2
    const v1, 0x7f110332

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected d(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->d(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->i(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7bfa480

    if-lt v1, v2, :cond_0

    const v2, 0x1efe9200

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->e:Lcom/ifengyu/intercom/ui/widget/dialog/m$k;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m$k;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m$k;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090056
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(Lcom/ifengyu/intercom/ui/widget/dialog/m$k;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->e:Lcom/ifengyu/intercom/ui/widget/dialog/m$k;

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a([I)V

    return-void

    :array_0
    .array-data 4
        0x7f090056
        0x7f090057
    .end array-data
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->show()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-void
.end method
