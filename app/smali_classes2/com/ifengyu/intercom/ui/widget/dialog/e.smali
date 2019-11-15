.class public Lcom/ifengyu/intercom/ui/widget/dialog/e;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "DeviceUpdateLogInfoDialog.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1001db
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->a(Landroid/app/Activity;)V

    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1001d4

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/e;->c:Ljava/lang/String;

    const-string v2, "\\n"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
