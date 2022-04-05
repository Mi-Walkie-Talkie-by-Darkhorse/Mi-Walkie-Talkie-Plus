.class public Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090499

    const-string v2, "field \'mTvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mTvTitle:Landroid/widget/TextView;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const v1, 0x7f0902e6

    const-string v2, "field \'mNp1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const v1, 0x7f0902e7

    const-string v2, "field \'mNp2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900af

    const-string v2, "field \'mButtonNegative\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mButtonNegative:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900b1

    const-string v2, "field \'mButtonPositive\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mButtonPositive:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mButtonNegative:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mButtonPositive:Landroid/widget/TextView;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
