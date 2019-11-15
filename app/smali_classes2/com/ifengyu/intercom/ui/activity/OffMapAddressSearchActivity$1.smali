.class Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$1;
.super Ljava/lang/Object;
.source "OffMapAddressSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->c()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method
