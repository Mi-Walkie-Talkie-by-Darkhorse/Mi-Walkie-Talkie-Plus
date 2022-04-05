.class public Lcom/ifengyu/intercom/ui/widget/dialog/o;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/o$k;
    }
.end annotation


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

.field private f:Landroid/widget/EditText;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->p:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->n:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->o:I

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$k;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e:Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->p:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f090168

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f:Landroid/widget/EditText;

    const v0, 0x7f09046d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->o:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f11006a

    goto/16 :goto_1

    :pswitch_1
    const v1, 0x7f110116

    goto/16 :goto_1

    :pswitch_2
    const v1, 0x7f11029b

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

.method protected a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f:Landroid/widget/EditText;

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

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->c(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7bfa480

    if-lt v1, v2, :cond_0

    const v2, 0x1efe9200

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e:Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o$k;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o$k;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090061
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/o$k;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e:Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a([I)V

    return-void

    :array_0
    .array-data 4
        0x7f090061
        0x7f090062
    .end array-data
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-void
.end method