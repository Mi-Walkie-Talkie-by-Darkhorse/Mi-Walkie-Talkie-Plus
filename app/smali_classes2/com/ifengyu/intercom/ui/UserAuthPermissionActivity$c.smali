.class Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$c;
.super Lcom/qmuiteam/qmui/span/d;
.source "UserAuthPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;->x()Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;Landroid/view/View;IIII)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$c;->k:Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/span/d;-><init>(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity$c;->k:Lcom/ifengyu/intercom/ui/UserAuthPermissionActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->start(Landroid/content/Context;)V

    return-void
.end method
