.class Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;
.super Ljava/lang/Object;
.source "PickerDialog.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V
    .locals 0

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object p2, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->f:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object p2, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->e:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object p2, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->d:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    :goto_0
    return-void
.end method
