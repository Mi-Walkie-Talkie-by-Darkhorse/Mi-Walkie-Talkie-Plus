.class Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;
.super Lcom/ifengyu/intercom/network/a/d;
.source "OffMapAddressSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/network/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->b(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/widget/EditText;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->e(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->e(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->notifyDataSetChanged()V

    return-void
.end method
