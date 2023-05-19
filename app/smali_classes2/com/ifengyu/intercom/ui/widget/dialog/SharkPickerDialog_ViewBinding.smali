.class public Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SharkPickerDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090505

    const-string v2, "field \'mTvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mTvTitle:Landroid/widget/TextView;

    .line 4
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const v1, 0x7f09034a

    const-string v2, "field \'mNp1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    .line 5
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const v1, 0x7f09034b

    const-string v2, "field \'mNp2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900c0

    const-string v2, "field \'mButtonNegative\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900c2

    const-string v2, "field \'mButtonPositive\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mTvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
