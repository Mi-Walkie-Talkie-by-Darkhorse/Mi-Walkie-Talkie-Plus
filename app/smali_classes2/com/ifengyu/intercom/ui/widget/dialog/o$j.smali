.class Lcom/ifengyu/intercom/ui/widget/dialog/o$j;
.super Ljava/lang/Object;
.source "InsertChannelDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/o;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_6

    .line 1
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 5
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-lez v3, :cond_0

    .line 6
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_2

    :cond_0
    sub-int v3, v1, v2

    if-lez v3, :cond_27

    .line 7
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 10
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 11
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 12
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_2

    .line 13
    :cond_2
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 16
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 17
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 18
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_2

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 22
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 23
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 24
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_2

    .line 25
    :cond_4
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 28
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 29
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 30
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_2

    .line 31
    :cond_5
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 32
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 34
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 35
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 36
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_2

    :cond_6
    const/16 v3, 0xb

    const/4 v4, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-ne v1, v3, :cond_c

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    iget-object v10, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 40
    iget-object v11, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v11}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 41
    iget-object v12, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v12}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 42
    iget-object v13, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v13}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 43
    iget-object v14, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v14}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 44
    iget-object v15, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v15}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->i(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    new-array v4, v4, [Landroid/widget/EditText;

    .line 45
    iget-object v5, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v4, v7

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v4, v9

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v4, v6

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a([Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 46
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->c(Ljava/lang/String;)I

    move-result v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InsertChannelDialog"

    invoke-static {v4, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x8954400

    if-lt v2, v3, :cond_8

    const v3, 0x8d24d00

    if-le v2, v3, :cond_9

    :cond_8
    const v3, 0x19a14780

    if-lt v2, v3, :cond_27

    const v3, 0x1a39de00

    if-gt v2, v3, :cond_27

    .line 49
    :cond_9
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->j(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 50
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->k(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 51
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->k(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o$k;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_a
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->k(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 53
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->k(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Lcom/ifengyu/intercom/ui/widget/dialog/o$k;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/o$k;->a(Ljava/lang/String;)V

    .line 54
    :cond_b
    :goto_0
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_2

    .line 55
    :cond_c
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eq v1, v9, :cond_21

    if-eq v1, v4, :cond_21

    return-void

    .line 56
    :cond_d
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    const-string v4, "1"

    if-eqz v3, :cond_10

    .line 57
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 58
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eq v1, v9, :cond_21

    return-void

    :cond_e
    const/16 v2, 0x8

    if-eq v1, v2, :cond_21

    if-eq v1, v9, :cond_21

    :cond_f
    return-void

    .line 59
    :cond_10
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    const/16 v5, 0xa

    const-string v10, "4"

    if-eqz v3, :cond_14

    new-array v3, v7, [Landroid/widget/EditText;

    .line 60
    iget-object v7, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v7

    aput-object v7, v3, v8

    iget-object v7, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a([Landroid/widget/EditText;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 61
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 62
    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v1, :cond_21

    if-eq v1, v2, :cond_21

    if-eq v1, v9, :cond_21

    if-eq v1, v6, :cond_21

    const/4 v2, 0x5

    if-eq v1, v2, :cond_21

    return-void

    .line 63
    :cond_11
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 64
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eq v1, v5, :cond_21

    return-void

    .line 65
    :cond_12
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    :cond_13
    return-void

    .line 66
    :cond_14
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    const-string v11, "0"

    const-string v12, "8"

    if-eqz v3, :cond_18

    new-array v3, v9, [Landroid/widget/EditText;

    .line 67
    iget-object v6, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a([Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 68
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 69
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 70
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 71
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 72
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 73
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_16
    if-eq v1, v5, :cond_21

    :cond_17
    return-void

    .line 74
    :cond_18
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1c

    new-array v3, v6, [Landroid/widget/EditText;

    .line 75
    iget-object v6, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v3, v7

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a([Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 76
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 77
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 78
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 79
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 80
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 81
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1a
    if-eq v1, v5, :cond_21

    :cond_1b
    return-void

    .line 82
    :cond_1c
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/widget/EditText;

    .line 83
    iget-object v13, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v13}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v13

    aput-object v13, v3, v8

    iget-object v8, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v8}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v8

    aput-object v8, v3, v2

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v3, v7

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v3, v9

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a([Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 84
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 85
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 86
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 87
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 88
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    .line 89
    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    if-eq v1, v5, :cond_21

    return-void

    :cond_1f
    if-eq v1, v5, :cond_21

    const/4 v2, 0x7

    if-eq v1, v2, :cond_21

    if-eq v1, v6, :cond_21

    if-eqz v1, :cond_21

    :cond_20
    return-void

    .line 90
    :cond_21
    :goto_1
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 91
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->h(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 92
    :cond_22
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 93
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->g(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 94
    :cond_23
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 95
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->f(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 96
    :cond_24
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 97
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->d(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 98
    :cond_25
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 99
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->e(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 100
    :cond_26
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 101
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_27

    .line 102
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/dialog/o$j;->a:Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->b(Lcom/ifengyu/intercom/ui/widget/dialog/o;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->c()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_2
    return-void
.end method
