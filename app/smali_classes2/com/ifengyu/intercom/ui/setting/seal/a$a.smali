.class Lcom/ifengyu/intercom/ui/setting/seal/a$a;
.super Landroid/widget/BaseAdapter;
.source "SealInsertChannelDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/seal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/16 v5, 0xa

    const v4, 0x7f0f0034

    const v3, 0x7f020080

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/a;->k(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/a;->k(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400af

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/a;->k(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400af

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v1, 0x7f0f0033

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p1, v6, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq p1, v6, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    if-eq p1, v6, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->e(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v6, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eq p1, v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->e(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->e(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq p1, v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->d(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->e(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->e(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq p1, v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->b(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->e(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->c(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->d(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->g(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->f(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/a;->e(Lcom/ifengyu/intercom/ui/setting/seal/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eq p1, v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_f
    if-eq p1, v5, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
