.class Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$a;
.super Ljava/lang/Object;
.source "SetMyOtherInfoActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
