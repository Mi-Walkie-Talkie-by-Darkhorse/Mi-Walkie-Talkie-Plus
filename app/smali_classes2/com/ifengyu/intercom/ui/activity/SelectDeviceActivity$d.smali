.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$d;
.super Lcom/qmuiteam/qmui/span/d;
.source "SelectDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->y()Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$d;->k:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/qmuiteam/qmui/span/d;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$d;->k:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Landroid/content/Context;I)V

    return-void
.end method
