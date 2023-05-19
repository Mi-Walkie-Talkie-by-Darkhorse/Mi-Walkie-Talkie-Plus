.class Lcom/huawei/hms/scankit/w;
.super Ljava/lang/Object;
.source "IRemoteViewDelegateImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/y;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/y;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/w;->a:Lcom/huawei/hms/scankit/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/w;->a:Lcom/huawei/hms/scankit/y;

    iget-object v0, v0, Lcom/huawei/hms/scankit/q;->k:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
