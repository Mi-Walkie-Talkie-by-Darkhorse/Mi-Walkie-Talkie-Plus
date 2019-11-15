.class public Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SharkPickerDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    const v0, 0x7f1001b3

    const-string v1, "field \'mTvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f100206

    const-string v1, "field \'mNp1\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const v0, 0x7f100207

    const-string v1, "field \'mNp2\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const v0, 0x7f1001de

    const-string v1, "field \'mButtonNegative\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    const v0, 0x7f1001df

    const-string v1, "field \'mButtonPositive\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog_ViewBinding;->a:Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    return-void
.end method
