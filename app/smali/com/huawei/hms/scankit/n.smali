.class Lcom/huawei/hms/scankit/n;
.super Ljava/lang/Object;
.source "IRemoteCustomedViewDelegateImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/q;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/q;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/n;->a:Lcom/huawei/hms/scankit/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/scankit/n;->a:Lcom/huawei/hms/scankit/q;

    iget-object p1, p1, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/e;->a(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
