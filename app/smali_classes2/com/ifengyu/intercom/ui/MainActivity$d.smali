.class Lcom/ifengyu/intercom/ui/MainActivity$d;
.super Lcom/qmuiteam/qmui/span/d;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/MainActivity;->C()Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$d;->k:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/qmuiteam/qmui/span/d;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$d;->k:Lcom/ifengyu/intercom/ui/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Landroid/content/Context;I)V

    return-void
.end method
