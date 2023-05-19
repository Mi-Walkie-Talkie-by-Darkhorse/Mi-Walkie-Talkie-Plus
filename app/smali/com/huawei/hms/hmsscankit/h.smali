.class Lcom/huawei/hms/hmsscankit/h;
.super Ljava/lang/Object;
.source "RemoteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/hmsscankit/RemoteView$a;->createDelegate(Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/hmsscankit/RemoteView$a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/hmsscankit/RemoteView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/h;->a:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/hmsscankit/h;->a:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    iget-object v0, p1, Lcom/huawei/hms/hmsscankit/RemoteView$a;->s:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-static {p1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->b(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView;->access$1200(Lcom/huawei/hms/hmsscankit/RemoteView;Landroid/app/Activity;)V

    return-void
.end method
