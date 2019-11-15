.class Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$1;
.super Ljava/lang/Object;
.source "OfflineMapTypeSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/OfflineMapTypeSelectActivity;->finish()V

    return-void
.end method
