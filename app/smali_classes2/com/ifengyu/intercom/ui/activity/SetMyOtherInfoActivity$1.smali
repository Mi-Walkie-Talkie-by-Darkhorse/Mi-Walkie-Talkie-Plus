.class Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$1;
.super Ljava/lang/Object;
.source "SetMyOtherInfoActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
