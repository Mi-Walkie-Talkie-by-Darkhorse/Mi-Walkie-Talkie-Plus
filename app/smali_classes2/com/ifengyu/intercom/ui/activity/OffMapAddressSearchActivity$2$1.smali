.class Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2$1;
.super Ljava/lang/Object;
.source "OffMapAddressSearchActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/network/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2$1;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2$1;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method
