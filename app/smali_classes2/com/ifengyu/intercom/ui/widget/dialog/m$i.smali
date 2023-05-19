.class Lcom/ifengyu/intercom/ui/widget/dialog/m$i;
.super Landroid/widget/BaseAdapter;
.source "InsertChannelDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/m;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 p2, 0x0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->k(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00db

    invoke-virtual {p1, v0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f0800a7

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object p1

    :cond_0
    const/16 v0, 0xb

    const v1, 0x7f0c00da

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->k(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0800a8

    .line 4
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object p3

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->k(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0800a9

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const p3, 0x7f06005c

    .line 8
    invoke-static {p3}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->j()[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->isFocused()Z

    move-result p3

    const/4 v0, 0x3

    const v1, 0x7f06005d

    const v2, 0x7f0800a5

    if-eqz p3, :cond_2

    if-eq p1, v0, :cond_16

    const/4 p3, 0x6

    if-eq p1, p3, :cond_16

    .line 11
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 12
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 13
    :cond_2
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->isFocused()Z

    move-result p3

    const-string v3, "1"

    if-eqz p3, :cond_5

    .line 14
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 15
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eq p1, v0, :cond_16

    .line 16
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 17
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p3, 0x8

    if-eq p1, p3, :cond_16

    if-eq p1, v0, :cond_16

    .line 18
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 19
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 20
    :cond_4
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 22
    :cond_5
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->isFocused()Z

    move-result p3

    const/4 v4, 0x4

    const/16 v5, 0xa

    const-string v6, "4"

    if-eqz p3, :cond_9

    .line 23
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 24
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 25
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 26
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p1, :cond_16

    const/4 p3, 0x1

    if-eq p1, p3, :cond_16

    if-eq p1, v0, :cond_16

    if-eq p1, v4, :cond_16

    const/4 p3, 0x5

    if-eq p1, p3, :cond_16

    .line 27
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 28
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 29
    :cond_6
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 30
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eq p1, v5, :cond_16

    .line 31
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 32
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "3"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 34
    :cond_8
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 35
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 36
    :cond_9
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->m(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->isFocused()Z

    move-result p3

    const-string v0, "0"

    const-string v7, "8"

    if-eqz p3, :cond_d

    .line 37
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 38
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 39
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 40
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 41
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 42
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    :cond_a
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 43
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 44
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 45
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    :cond_b
    if-eq p1, v5, :cond_16

    .line 46
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 47
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 48
    :cond_c
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 49
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 50
    :cond_d
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->n(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->isFocused()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 51
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 52
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 53
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 54
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->m(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_10

    .line 55
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 56
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 57
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    :cond_e
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 58
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 59
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 60
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    :cond_f
    if-eq p1, v5, :cond_16

    .line 61
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 62
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 63
    :cond_10
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 64
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 65
    :cond_11
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->i(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->isFocusable()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 66
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_15

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 67
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_15

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 68
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_15

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 69
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->m(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_15

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 70
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->n(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_15

    .line 71
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 72
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 73
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    :cond_12
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 74
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->q(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 75
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->p(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/m$i;->a:Lcom/ifengyu/intercom/ui/widget/dialog/m;

    .line 76
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->o(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    :cond_13
    if-eq p1, v5, :cond_16

    .line 77
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 78
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_14
    if-eq p1, v5, :cond_16

    const/4 p3, 0x7

    if-eq p1, p3, :cond_16

    if-eq p1, v4, :cond_16

    if-eqz p1, :cond_16

    .line 79
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 81
    :cond_15
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    :goto_0
    return-object p2
.end method
